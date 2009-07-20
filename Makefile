# $DragonFly: src/libexec/dma/Makefile,v 1.5 2008/09/19 00:36:57 corecode Exp $
#

CFLAGS+= -I${.CURDIR}

DPADD=  ${LIBSSL} ${LIBCRYPTO}
LDADD=  -lssl -lcrypto

PROG=	dma
SRCS=	base64.c conf.c crypto.c net.c dma.c aliases_scan.l aliases_parse.y spool.c local.c util.c
MAN=	dma.8

BINOWN= root
BINGRP= mail
BINMODE=2555
WARNS?=	6

.include <bsd.prog.mk>
