.class public Lorg/jpos/iso/packager/ISO87BPackager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "ISO87BPackager.java"


# static fields
.field private static final pad:Z = false


# instance fields
.field protected fld:[Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 166
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 34
    const/16 v1, 0x81

    new-array v1, v1, [Lorg/jpos/iso/ISOFieldPackager;

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/4 v3, 0x4

    const-string v4, "MESSAGE TYPE INDICATOR"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_BITMAP;

    const/16 v6, 0x10

    const-string v7, "BIT MAP"

    invoke-direct {v2, v6, v7}, Lorg/jpos/iso/IFB_BITMAP;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const/16 v7, 0x13

    const-string v8, "PAN - PRIMARY ACCOUNT NUMBER"

    invoke-direct {v2, v7, v8, v4}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/4 v7, 0x2

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/4 v8, 0x6

    const-string v9, "PROCESSING CODE"

    invoke-direct {v2, v8, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v9, 0x3

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/16 v10, 0xc

    const-string v11, "AMOUNT, TRANSACTION"

    invoke-direct {v2, v10, v11, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v11, "AMOUNT, SETTLEMENT"

    invoke-direct {v2, v10, v11, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v11, 0x5

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v11, "AMOUNT, CARDHOLDER BILLING"

    invoke-direct {v2, v10, v11, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/16 v11, 0xa

    const-string v12, "TRANSMISSION DATE AND TIME"

    invoke-direct {v2, v11, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v12, 0x7

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/16 v12, 0x8

    const-string v13, "AMOUNT, CARDHOLDER BILLING FEE"

    invoke-direct {v2, v12, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v13, "CONVERSION RATE, SETTLEMENT"

    invoke-direct {v2, v12, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x9

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v14, "CONVERSION RATE, CARDHOLDER BILLING"

    invoke-direct {v2, v12, v14, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v14, "SYSTEM TRACE AUDIT NUMBER"

    invoke-direct {v2, v8, v14, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "TIME, LOCAL TRANSACTION"

    invoke-direct {v2, v8, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v10

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "DATE, LOCAL TRANSACTION"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "DATE, EXPIRATION"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0xe

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "DATE, SETTLEMENT"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0xf

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "DATE, CONVERSION"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "DATE, CAPTURE"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x11

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "MERCHANTS TYPE"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x12

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "ACQUIRING INSTITUTION COUNTRY CODE"

    invoke-direct {v2, v9, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x13

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "PAN EXTENDED COUNTRY CODE"

    invoke-direct {v2, v9, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x14

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "FORWARDING INSTITUTION COUNTRY CODE"

    invoke-direct {v2, v9, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x15

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "POINT OF SERVICE ENTRY MODE"

    invoke-direct {v2, v9, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x16

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "CARD SEQUENCE NUMBER"

    invoke-direct {v2, v9, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x17

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "NETWORK INTERNATIONAL IDENTIFIEER"

    invoke-direct {v2, v9, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x18

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "POINT OF SERVICE CONDITION CODE"

    invoke-direct {v2, v7, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0x19

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v11, "POINT OF SERVICE PIN CAPTURE CODE"

    invoke-direct {v2, v7, v11, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v11, 0x1a

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v11, "AUTHORIZATION IDENTIFICATION RESP LEN"

    invoke-direct {v2, v5, v11, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v11, 0x1b

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_AMOUNT;

    const-string v11, "AMOUNT, TRANSACTION FEE"

    invoke-direct {v2, v13, v11, v5}, Lorg/jpos/iso/IFB_AMOUNT;-><init>(ILjava/lang/String;Z)V

    const/16 v11, 0x1c

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_AMOUNT;

    const-string v3, "AMOUNT, SETTLEMENT FEE"

    invoke-direct {v2, v13, v3, v5}, Lorg/jpos/iso/IFB_AMOUNT;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_AMOUNT;

    const-string v3, "AMOUNT, TRANSACTION PROCESSING FEE"

    invoke-direct {v2, v13, v3, v5}, Lorg/jpos/iso/IFB_AMOUNT;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_AMOUNT;

    const-string v3, "AMOUNT, SETTLEMENT PROCESSING FEE"

    invoke-direct {v2, v13, v3, v5}, Lorg/jpos/iso/IFB_AMOUNT;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v3, "ACQUIRING INSTITUTION IDENT CODE"

    invoke-direct {v2, v14, v3, v4}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v3, "FORWARDING INSTITUTION IDENT CODE"

    invoke-direct {v2, v14, v3, v4}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v3, "PAN EXTENDED"

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const/16 v3, 0x25

    const-string v13, "TRACK 2 DATA"

    invoke-direct {v2, v3, v13, v4}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v3, 0x68

    const-string v13, "TRACK 3 DATA"

    invoke-direct {v2, v3, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v3, "RETRIEVAL REFERENCE NUMBER"

    invoke-direct {v2, v10, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x25

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v3, "AUTHORIZATION IDENTIFICATION RESPONSE"

    invoke-direct {v2, v8, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x26

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v3, "RESPONSE CODE"

    invoke-direct {v2, v7, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x27

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v3, "SERVICE RESTRICTION CODE"

    invoke-direct {v2, v9, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x28

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v3, "CARD ACCEPTOR TERMINAL IDENTIFICACION"

    invoke-direct {v2, v12, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x29

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const/16 v3, 0xf

    const-string v13, "CARD ACCEPTOR IDENTIFICATION CODE"

    invoke-direct {v2, v3, v13}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const/16 v13, 0x28

    const-string v11, "CARD ACCEPTOR NAME/LOCATION"

    invoke-direct {v2, v13, v11}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2b

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v11, "ADITIONAL RESPONSE DATA"

    invoke-direct {v2, v15, v11}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2c

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const/16 v11, 0x4c

    const-string v13, "TRACK 1 DATA"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2d

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v11, 0x3e7

    const-string v13, "ADITIONAL DATA - ISO"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x2e

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v13, "ADITIONAL DATA - NATIONAL"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x2f

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v13, "ADITIONAL DATA - PRIVATE"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x30

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v13, "CURRENCY CODE, TRANSACTION"

    invoke-direct {v2, v9, v13}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x31

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v13, "CURRENCY CODE, SETTLEMENT"

    invoke-direct {v2, v9, v13}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x32

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v13, "CURRENCY CODE, CARDHOLDER BILLING"

    invoke-direct {v2, v9, v13}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x33

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v13, "PIN DATA"

    invoke-direct {v2, v12, v13}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x34

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v13, "SECURITY RELATED CONTROL INFORMATION"

    invoke-direct {v2, v6, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x35

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v13, 0x78

    const-string v14, "ADDITIONAL AMOUNTS"

    invoke-direct {v2, v13, v14}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x36

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v13, "RESERVED ISO"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x37

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v13, "RESERVED ISO"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x38

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v13, "RESERVED NATIONAL"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v14, 0x39

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v14, 0x3a

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x3b

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v13, "RESERVED PRIVATE"

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v14, 0x3c

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v14, 0x3d

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v14, 0x3e

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v13}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x3f

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v13, "MESSAGE AUTHENTICATION CODE FIELD"

    invoke-direct {v2, v12, v13}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x40

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v13, "BITMAP, EXTENDED"

    invoke-direct {v2, v5, v13}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v13, 0x41

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v13, "SETTLEMENT CODE"

    invoke-direct {v2, v5, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x42

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v13, "EXTENDED PAYMENT CODE"

    invoke-direct {v2, v7, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x43

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v13, "RECEIVING INSTITUTION COUNTRY CODE"

    invoke-direct {v2, v9, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x44

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v13, "SETTLEMENT INSTITUTION COUNTRY CODE"

    invoke-direct {v2, v9, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v13, 0x45

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v13, "NETWORK MANAGEMENT INFORMATION CODE"

    invoke-direct {v2, v9, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x46

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "MESSAGE NUMBER"

    const/4 v13, 0x4

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x47

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "MESSAGE NUMBER LAST"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x48

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "DATE ACTION"

    invoke-direct {v2, v8, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x49

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "CREDITS NUMBER"

    const/16 v13, 0xa

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x4a

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "CREDITS REVERSAL NUMBER"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x4b

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "DEBITS NUMBER"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x4c

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "DEBITS REVERSAL NUMBER"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x4d

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "TRANSFER NUMBER"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x4e

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "TRANSFER REVERSAL NUMBER"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x4f

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "INQUIRIES NUMBER"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x50

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "AUTHORIZATION NUMBER"

    invoke-direct {v2, v13, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x51

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "CREDITS, PROCESSING FEE AMOUNT"

    invoke-direct {v2, v10, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x52

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "CREDITS, TRANSACTION FEE AMOUNT"

    invoke-direct {v2, v10, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x53

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "DEBITS, PROCESSING FEE AMOUNT"

    invoke-direct {v2, v10, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x54

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "DEBITS, TRANSACTION FEE AMOUNT"

    invoke-direct {v2, v10, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x55

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "CREDITS, AMOUNT"

    invoke-direct {v2, v6, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x56

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "CREDITS, REVERSAL AMOUNT"

    invoke-direct {v2, v6, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x57

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "DEBITS, AMOUNT"

    invoke-direct {v2, v6, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x58

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "DEBITS, REVERSAL AMOUNT"

    invoke-direct {v2, v6, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x59

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v9, "ORIGINAL DATA ELEMENTS"

    invoke-direct {v2, v3, v9, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v9, 0x5a

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v9, "FILE UPDATE CODE"

    invoke-direct {v2, v5, v9}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x5b

    aput-object v2, v1, v5

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v5, "FILE SECURITY CODE"

    invoke-direct {v2, v7, v5}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x5c

    aput-object v2, v1, v5

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v5, "RESPONSE INDICATOR"

    invoke-direct {v2, v8, v5}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x5d

    aput-object v2, v1, v5

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const/4 v5, 0x7

    const-string v7, "SERVICE INDICATOR"

    invoke-direct {v2, v5, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v5, 0x5e

    aput-object v2, v1, v5

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v5, "REPLACEMENT AMOUNTS"

    invoke-direct {v2, v3, v5}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x5f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v3, "MESSAGE SECURITY CODE"

    invoke-direct {v2, v6, v3}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x60

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_AMOUNT;

    const-string v3, "AMOUNT, NET SETTLEMENT"

    const/16 v5, 0x11

    invoke-direct {v2, v5, v3, v4}, Lorg/jpos/iso/IFB_AMOUNT;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x61

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v3, "PAYEE"

    invoke-direct {v2, v15, v3}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x62

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v3, "SETTLEMENT INSTITUTION IDENT CODE"

    const/16 v5, 0xb

    invoke-direct {v2, v5, v3, v4}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x63

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v3, "RECEIVING INSTITUTION IDENT CODE"

    invoke-direct {v2, v5, v3, v4}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x64

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v3, "FILE NAME"

    const/16 v4, 0x11

    invoke-direct {v2, v4, v3}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x65

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v3, "ACCOUNT IDENTIFICATION 1"

    const/16 v4, 0x1c

    invoke-direct {v2, v4, v3}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x66

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v3, "ACCOUNT IDENTIFICATION 2"

    invoke-direct {v2, v4, v3}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x67

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v3, 0x64

    const-string v4, "TRANSACTION DESCRIPTION"

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x68

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v3, "RESERVED ISO USE"

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x69

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x6a

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x6b

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x6c

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x6d

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x6e

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v3, "RESERVED NATIONAL USE"

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x70

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x71

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x72

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x73

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x74

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x75

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x76

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x77

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v3, "RESERVED PRIVATE USE"

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x78

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x79

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x7a

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x7b

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x7c

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x7d

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x7e

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v11, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v3, "MAC 2"

    invoke-direct {v2, v12, v3}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x80

    aput-object v2, v1, v3

    iput-object v1, v0, Lorg/jpos/iso/packager/ISO87BPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    .line 167
    invoke-virtual {v0, v1}, Lorg/jpos/iso/packager/ISO87BPackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 168
    return-void
.end method
