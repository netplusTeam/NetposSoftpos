.class public Lorg/jpos/iso/packager/X92Packager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "X92Packager.java"


# instance fields
.field protected bitMapPackager:Lorg/jpos/iso/ISOFieldPackager;

.field protected fld:[Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 105
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 33
    new-instance v1, Lorg/jpos/iso/X92_BITMAP;

    const/16 v2, 0x10

    const-string v3, "X9.2 BIT MAP"

    invoke-direct {v1, v2, v3}, Lorg/jpos/iso/X92_BITMAP;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lorg/jpos/iso/packager/X92Packager;->bitMapPackager:Lorg/jpos/iso/ISOFieldPackager;

    .line 36
    const/16 v1, 0x41

    new-array v1, v1, [Lorg/jpos/iso/ISOFieldPackager;

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const/4 v4, 0x4

    const-string v5, "MESSAGE TYPE"

    invoke-direct {v3, v4, v5}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/4 v5, 0x0

    aput-object v3, v1, v5

    new-instance v3, Lorg/jpos/iso/IFA_FLLNUM;

    const/16 v6, 0x13

    const-string v7, "PAN - PRIMARY ACCOUNT NUMBER"

    invoke-direct {v3, v6, v7}, Lorg/jpos/iso/IFA_FLLNUM;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x1

    aput-object v3, v1, v7

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const/4 v8, 0x6

    const-string v9, "PROCESSING CODE"

    invoke-direct {v3, v8, v9}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/4 v9, 0x2

    aput-object v3, v1, v9

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const/16 v10, 0xc

    const-string v11, "AMOUNT, TRANSACTION"

    invoke-direct {v3, v10, v11}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/4 v11, 0x3

    aput-object v3, v1, v11

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v12, "AMOUNT, SETTLEMENT"

    invoke-direct {v3, v10, v12}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v4

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "AMOUNT, CARDHOLDER BILLING"

    invoke-direct {v3, v10, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "ACQUIRING INSTITUTION TRACE NUMBER"

    invoke-direct {v3, v8, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v8

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "TRANSACTION DATE"

    invoke-direct {v3, v8, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "ACQUIRING INSTITUTION POST DATE"

    invoke-direct {v3, v8, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v12, "RESP ACQUIRING INSTITUTION POST DATE"

    invoke-direct {v3, v8, v12}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v12, "TRANSACTION TIME"

    invoke-direct {v3, v8, v12}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const/16 v13, 0x1d

    const-string v14, "ADDRESS VERIFICATION"

    invoke-direct {v3, v13, v14}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v14, "ADDRESS VERIFICATION STATE"

    invoke-direct {v3, v7, v14}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v10

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v7, "ACQUIRING INSTITUTION IDENT CODE"

    invoke-direct {v3, v12, v7}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v1, v7

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v7, "CARD ACCEPTOR IDENTIFICATION NUMBER"

    invoke-direct {v3, v12, v7}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v1, v7

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v14, "TERMINAL COUNTRY CODE"

    invoke-direct {v3, v11, v14}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v14, 0xf

    aput-object v3, v1, v14

    new-instance v3, Lorg/jpos/iso/IFA_BINARY;

    const-string v15, "UNUSED"

    invoke-direct {v3, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v2

    new-instance v3, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v3, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v16, 0x11

    aput-object v3, v1, v16

    new-instance v3, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v3, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v16, 0x12

    aput-object v3, v1, v16

    new-instance v3, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v2, "ISSUER INSTITUTION IDENT NUMBER"

    invoke-direct {v3, v12, v2}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "REVERSAL CODE"

    invoke-direct {v2, v9, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "GROSS DEBITS, AMOUNT"

    invoke-direct {v2, v7, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "GROSS DEBITS, COUNT"

    invoke-direct {v2, v12, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "GROSS CREDITS, AMOUNT"

    invoke-direct {v2, v7, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v6, "GROSS CREDITS, COUNT"

    invoke-direct {v2, v12, v6}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x1a

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v6, "REVERSAL GROSS DEBITS, AMOUNT"

    invoke-direct {v2, v7, v6}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x1b

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v6, "REVERSAL GROSS DEBITS, COUNT"

    invoke-direct {v2, v12, v6}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x1c

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v6, "REVERSAL GROSS CREDITS, AMOUNT"

    invoke-direct {v2, v7, v6}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v6, "REVERSAL GROSS CREDITS, COUNT"

    invoke-direct {v2, v12, v6}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x1e

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v7, "TRANSACTION SPECIFICATION"

    invoke-direct {v2, v9, v7}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x1f

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v7, "NETWORK MANAGEMENT INFORMATION CODE"

    invoke-direct {v2, v11, v7}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x20

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v7, "RESPONSE CODE"

    invoke-direct {v2, v10, v7}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x21

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v7, "TERMINAL OWNER"

    invoke-direct {v2, v3, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x22

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v7, "TERMINAL CITY/STATE"

    invoke-direct {v2, v14, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x23

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v7, "ORIGINAL DATA (ACQ POST DATE)"

    invoke-direct {v2, v8, v7}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x24

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v7, "ISSUER TRACE NUMBER"

    invoke-direct {v2, v8, v7}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x25

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x26

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    const-string v10, "PIN"

    invoke-direct {v2, v4, v10}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v10, 0x27

    aput-object v2, v1, v10

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v11, "PASSWORD"

    invoke-direct {v2, v4, v11}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x28

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x29

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2a

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2b

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2c

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2d

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2e

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2f

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x30

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x31

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v11, "APROVAL CODE"

    invoke-direct {v2, v4, v11}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x32

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "POST INFO"

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x33

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "ISO ORIGINAL DATA"

    invoke-direct {v2, v6, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x34

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "SHARING"

    const/16 v6, 0x13

    invoke-direct {v2, v6, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x35

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v4, "TERMINAL INFORMATION"

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x36

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "PIN SIZE"

    invoke-direct {v2, v9, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x37

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "OPTIONS"

    const/16 v4, 0x10

    invoke-direct {v2, v4, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x38

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "ISSUER POST DATE"

    invoke-direct {v2, v8, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x39

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "SOURCE/TARGET ACCOUNT NUMBERS"

    invoke-direct {v2, v7, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_NUMERIC;

    const-string v3, "PREAUTHORIZATION"

    invoke-direct {v2, v14, v3}, Lorg/jpos/iso/IFA_NUMERIC;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_LLLCHAR;

    const/16 v3, 0x17e

    const-string v4, "ADDITIONAL DATA"

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/IFA_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_FLLCHAR;

    const-string v3, "TRACK II DATA"

    invoke-direct {v2, v10, v3}, Lorg/jpos/iso/IFA_FLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFA_BINARY;

    invoke-direct {v2, v5, v15}, Lorg/jpos/iso/IFA_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x40

    aput-object v2, v1, v3

    iput-object v1, v0, Lorg/jpos/iso/packager/X92Packager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    .line 106
    invoke-virtual {v0, v1}, Lorg/jpos/iso/packager/X92Packager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/jpos/iso/packager/X92Packager;->bitMapPackager:Lorg/jpos/iso/ISOFieldPackager;

    return-object v0
.end method

.method protected getMaxValidField()I
    .locals 1

    .line 127
    const/16 v0, 0x40

    return v0
.end method
