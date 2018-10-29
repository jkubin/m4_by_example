divert(-1)changequote([,])

__HEADER([Josef Kubin], [2018/05/10], [array])
___DESCR([generates initial linked XOR list for an external memory])
___POINT([macro decomposition, KISS (Keep It Simple and Stupid)])
___POINT([double braces; incr()/decr(); left recursion loop (generally not recommended)])
___USAGE([m4 -DLIST_SIZE=$[$RANDOM & 0xff] xor_list.m4])

# https://en.wikipedia.org/wiki/XOR_linked_list

define([XOR_LIST_ITEM_GENERATOR], [0x[]eval((($1 + 1) % $2) ^ (($2 - 1 + $1) % $2), 16, 2)])

define([XOR_SEQ_BLOCK], [ifelse($1, 0, [], [$0(decr($1), $2)])ifelse(eval($1 & 0xf), 0, [
]){XOR_LIST_ITEM_GENERATOR($1, $2)[}, ]])

define([XOR_SEQ], [{XOR_SEQ_BLOCK($1, incr($1))
{0x[]eval($1, 16, 2)[},	/* last_index XOR first_index = initial_index */
{0x]eval($1, 16, 2)[},	/* total number of items in the menu */
}]])

divert(0)dnl
struct linked_list {
	unsigned char item;
	unsigned char crc;
};

struct aux_sym {
	void _;
};

[#]define [LIST_SIZE]	incr(LIST_SIZE)
[#]define [LIST_SIZE]	LIST_SIZE

#pragma romdata EEPROM
const rom struct linked_list xor_list[[]] =
XOR_SEQ(LIST_SIZE)
};
const rom struct aux_sym xor_list_null;
...
#pragma romdata CRC_DATA
EEPROM_CRC_SEQDAT_ARRAY(xor_list, sizeof(xor_list[[0]].item), LIST_SIZE[]ul + 3);
...

---8<---

...
extern const rom struct linked_list xor_list[[]];
extern const rom struct linked_list xor_list_null[[]];

void traverse_xor_list(void)
{
	unsigned char index;
	unsigned char prev;
	unsigned char next;

	/* init xor list */
	prev = xor_list_null[[-2]];
	index = 0;
	next = prev ^ xor_list[[index]];

	/* traverse xor list forward */
	prev = index;
	index = next;
	next = prev ^ xor_list[[index]];
	...
	/* traverse forward */
	prev = index;
	index = next;
	next = prev ^ xor_list[[index]];
	...
	...
	/* traverse backward */
	next = index;
	index = prev;
	prev = next ^ xor_list[[prev]];
	...
	/* traverse backward */
	next = index;
	index = prev;
	prev = next ^ xor_list[[prev]];
	...
}
