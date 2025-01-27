.class public Lorg/jpos/iso/packager/ISO93BPackager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "ISO93BPackager.java"


# static fields
.field private static final pad:Z = false


# instance fields
.field protected fld:[Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method public constructor <init>()V
    .locals 17

    .line 168
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 36
    const/16 v1, 0x81

    new-array v1, v1, [Lorg/jpos/iso/ISOFieldPackager;

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/4 v3, 0x4

    const-string v4, "Message Type Indicator"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/jpos/iso/IFB_BITMAP;

    const/16 v4, 0x10

    const-string v6, "Bitmap"

    invoke-direct {v2, v4, v6}, Lorg/jpos/iso/IFB_BITMAP;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const/16 v7, 0x13

    const-string v8, "Primary Account number"

    invoke-direct {v2, v7, v8, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/4 v8, 0x2

    aput-object v2, v1, v8

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/4 v9, 0x6

    const-string v10, "Processing Code"

    invoke-direct {v2, v9, v10, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v10, 0x3

    aput-object v2, v1, v10

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/16 v11, 0xc

    const-string v12, "Amount, Transaction"

    invoke-direct {v2, v11, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Amount, Reconciliation"

    invoke-direct {v2, v11, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v12, 0x5

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Amount, Cardholder billing"

    invoke-direct {v2, v11, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v9

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/16 v12, 0xa

    const-string v13, "Date and time, transmission"

    invoke-direct {v2, v12, v13, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/4 v13, 0x7

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const/16 v13, 0x8

    const-string v14, "Amount, Cardholder billing fee"

    invoke-direct {v2, v13, v14, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v13

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v14, "Conversion rate, Reconciliation"

    invoke-direct {v2, v13, v14, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v14, 0x9

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v14, "Conversion rate, Cardholder billing"

    invoke-direct {v2, v13, v14, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v14, "Systems trace audit number"

    invoke-direct {v2, v9, v14, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v14, 0xb

    aput-object v2, v1, v14

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "Date and time, Local transaction"

    invoke-direct {v2, v11, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "Date, Effective"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "Date, Expiration"

    invoke-direct {v2, v3, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0xe

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v15, "Date, Settlement"

    invoke-direct {v2, v9, v15, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v15, 0xf

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Date, Conversion"

    invoke-direct {v2, v3, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Date, Capture"

    invoke-direct {v2, v3, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v12, 0x11

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Merchant type"

    invoke-direct {v2, v3, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v12, 0x12

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Country code, Acquiring institution"

    invoke-direct {v2, v10, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v7, "Country code, Primary account number"

    invoke-direct {v2, v10, v7, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x14

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v7, "Country code, Forwarding institution"

    invoke-direct {v2, v10, v7, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x15

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v7, "Point of service data code"

    invoke-direct {v2, v11, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x16

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v7, "Card sequence number"

    invoke-direct {v2, v10, v7, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x17

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v7, "Function code"

    invoke-direct {v2, v10, v7, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x18

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Message reason code"

    invoke-direct {v2, v3, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v12, 0x19

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v12, "Card acceptor business code"

    invoke-direct {v2, v3, v12, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Approval code length"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Date, Reconciliation"

    invoke-direct {v2, v9, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Reconciliation indicator"

    invoke-direct {v2, v10, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x1d

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Amounts, original"

    invoke-direct {v2, v7, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x1e

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const/16 v6, 0x63

    const-string v7, "Acquirer reference data"

    invoke-direct {v2, v6, v7}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x1f

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v7, "Acquirer institution ident code"

    invoke-direct {v2, v14, v7, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x20

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v7, "Forwarding institution ident code"

    invoke-direct {v2, v14, v7, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x21

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v7, "Primary account number, extended"

    invoke-direct {v2, v3, v7}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x22

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const/16 v7, 0x25

    const-string v12, "Track 2 data"

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x23

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v7, 0x68

    const-string v12, "Track 3 data"

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x24

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v7, "Retrieval reference number"

    invoke-direct {v2, v11, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x25

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v7, "Approval code"

    invoke-direct {v2, v9, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x26

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v7, "Action code"

    invoke-direct {v2, v10, v7, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x27

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v7, "Service code"

    invoke-direct {v2, v10, v7, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v7, 0x28

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v7, "Card acceptor terminal identification"

    invoke-direct {v2, v13, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x29

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v7, "Card acceptor identification code"

    invoke-direct {v2, v15, v7}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x2a

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v7, "Card acceptor name/location"

    invoke-direct {v2, v6, v7}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x2b

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v7, "Additional response data"

    invoke-direct {v2, v6, v7}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x2c

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const/16 v7, 0x4c

    const-string v11, "Track 1 data"

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x2d

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v7, 0xcc

    const-string v11, "Amounts, Fees"

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v7, 0x2e

    aput-object v2, v1, v7

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v7, 0x3e7

    const-string v11, "Additional data - national"

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x2f

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v11, "Additional data - private"

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x30

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v11, "Currency code, Transaction"

    invoke-direct {v2, v10, v11}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x31

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v11, "Currency code, Reconciliation"

    invoke-direct {v2, v10, v11}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x32

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const-string v11, "Currency code, Cardholder billing"

    invoke-direct {v2, v10, v11}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x33

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v11, "Personal identification number (PIN) data"

    invoke-direct {v2, v13, v11}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x34

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLBINARY;

    const/16 v11, 0x30

    const-string v12, "Security related control information"

    invoke-direct {v2, v11, v12}, Lorg/jpos/iso/IFB_LLBINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x35

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v11, 0x78

    const-string v12, "Amounts, additional"

    invoke-direct {v2, v11, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x36

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLLBINARY;

    const/16 v11, 0xff

    const-string v12, "IC card system related data"

    invoke-direct {v2, v11, v12}, Lorg/jpos/iso/IFB_LLLBINARY;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x37

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const/16 v11, 0x23

    const-string v12, "Original data elements"

    invoke-direct {v2, v11, v12, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v11, 0x38

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v11, "Authorization life cycle code"

    invoke-direct {v2, v10, v11, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v11, 0x39

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v11, "Authorizing agent institution Id Code"

    invoke-direct {v2, v14, v11, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v11, 0x3a

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v11, "Transport data"

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v11, 0x3b

    aput-object v2, v1, v11

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v11, "Reserved for national use"

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v12, 0x3c

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v12, 0x3d

    aput-object v2, v1, v12

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v12, "Reserved for private use"

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v15, 0x3e

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v15, 0x3f

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v15, "Message authentication code field"

    invoke-direct {v2, v13, v15}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v15, 0x40

    aput-object v2, v1, v15

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v15, "Reserved for ISO use"

    invoke-direct {v2, v13, v15}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v16, 0x41

    aput-object v2, v1, v16

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v3, 0xcc

    const-string v6, "Amounts, original fees"

    invoke-direct {v2, v3, v6}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x42

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Extended payment data"

    invoke-direct {v2, v8, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x43

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Country code, receiving institution"

    invoke-direct {v2, v10, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x44

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Country code, settlement institution"

    invoke-direct {v2, v10, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x45

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Country code, authorizing agent Inst."

    invoke-direct {v2, v10, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x46

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Message number"

    invoke-direct {v2, v13, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x47

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const-string v3, "Data record"

    invoke-direct {v2, v7, v3}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x48

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Date, action"

    invoke-direct {v2, v9, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x49

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Credits, number"

    const/16 v6, 0xa

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Credits, reversal number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Debits, number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Debits, reversal number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x4d

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Transfer, number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x4e

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Transfer, reversal number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x4f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Inquiries, number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x50

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Authorizations, number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x51

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Inquiries, reversal number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x52

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Payments, number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x53

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v3, "Payments, reversal number"

    invoke-direct {v2, v6, v3, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v3, 0x54

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v8, "Fee collections, number"

    invoke-direct {v2, v6, v8, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x55

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Credits, amount"

    invoke-direct {v2, v4, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x56

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Credits, reversal amount"

    invoke-direct {v2, v4, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x57

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Debits, amount"

    invoke-direct {v2, v4, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x58

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Debits, reversal amount"

    invoke-direct {v2, v4, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x59

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Authorizations, reversal number"

    const/16 v8, 0xa

    invoke-direct {v2, v8, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x5a

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Country code, transaction Dest. Inst."

    invoke-direct {v2, v10, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x5b

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Country code, transaction Orig. Inst."

    invoke-direct {v2, v10, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x5c

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v6, "Transaction Dest. Inst. Id code"

    invoke-direct {v2, v14, v6, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x5d

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v6, "Transaction Orig. Inst. Id code"

    invoke-direct {v2, v14, v6, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x5e

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v6, "Card issuer reference data"

    const/16 v8, 0x63

    invoke-direct {v2, v8, v6}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x5f

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLLBINARY;

    const-string v6, "Key management data"

    invoke-direct {v2, v7, v6}, Lorg/jpos/iso/IFB_LLLBINARY;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x60

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_AMOUNT;

    const-string v6, "Amount, Net reconciliation"

    const/16 v8, 0x11

    invoke-direct {v2, v8, v6, v5}, Lorg/jpos/iso/IFB_AMOUNT;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x61

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IF_CHAR;

    const/16 v6, 0x19

    const-string v8, "Payee"

    invoke-direct {v2, v6, v8}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x62

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v6, "Settlement institution Id code"

    invoke-direct {v2, v14, v6}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x63

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLNUM;

    const-string v6, "Receiving institution Id code"

    invoke-direct {v2, v14, v6, v5}, Lorg/jpos/iso/IFB_LLNUM;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x64

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v6, "File name"

    const/16 v8, 0x11

    invoke-direct {v2, v8, v6}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x65

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v6, "Account identification 1"

    const/16 v8, 0x1c

    invoke-direct {v2, v8, v6}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x66

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v6, "Account identification 2"

    invoke-direct {v2, v8, v6}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x67

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    const/16 v6, 0x64

    const-string v8, "Transaction description"

    invoke-direct {v2, v6, v8}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v6, 0x68

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Credits, Chargeback amount"

    invoke-direct {v2, v4, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v6, 0x69

    aput-object v2, v1, v6

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v6, "Debits, Chargeback amount"

    invoke-direct {v2, v4, v6, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v4, 0x6a

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v4, "Credits, Chargeback number"

    const/16 v6, 0xa

    invoke-direct {v2, v6, v4, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v4, 0x6b

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_NUMERIC;

    const-string v4, "Debits, Chargeback number"

    invoke-direct {v2, v6, v4, v5}, Lorg/jpos/iso/IFB_NUMERIC;-><init>(ILjava/lang/String;Z)V

    const/16 v4, 0x6c

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v4, "Credits, Fee amounts"

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v4, 0x6d

    aput-object v2, v1, v4

    new-instance v2, Lorg/jpos/iso/IFB_LLCHAR;

    const-string v4, "Debits, Fee amounts"

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/IFB_LLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x6e

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v15}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x6f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v15}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x70

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v15}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x71

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v15}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x72

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v15}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x73

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x74

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x75

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x76

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x77

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x78

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x79

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v11}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7a

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7b

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7c

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7d

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7e

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_LLLCHAR;

    invoke-direct {v2, v7, v12}, Lorg/jpos/iso/IFB_LLLCHAR;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x7f

    aput-object v2, v1, v3

    new-instance v2, Lorg/jpos/iso/IFB_BINARY;

    const-string v3, "Message authentication code field"

    invoke-direct {v2, v13, v3}, Lorg/jpos/iso/IFB_BINARY;-><init>(ILjava/lang/String;)V

    const/16 v3, 0x80

    aput-object v2, v1, v3

    iput-object v1, v0, Lorg/jpos/iso/packager/ISO93BPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    .line 169
    invoke-virtual {v0, v1}, Lorg/jpos/iso/packager/ISO93BPackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 170
    return-void
.end method
