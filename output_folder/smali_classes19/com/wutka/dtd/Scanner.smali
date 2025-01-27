.class Lcom/wutka/dtd/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wutka/dtd/Scanner$StreamInfo;
    }
.end annotation


# static fields
.field public static final ASTERISK:Lcom/wutka/dtd/TokenType;

.field public static final COMMA:Lcom/wutka/dtd/TokenType;

.field public static final COMMENT:Lcom/wutka/dtd/TokenType;

.field public static final CONDITIONAL:Lcom/wutka/dtd/TokenType;

.field public static final ENDCONDITIONAL:Lcom/wutka/dtd/TokenType;

.field public static final EOF:Lcom/wutka/dtd/TokenType;

.field public static final EQUAL:Lcom/wutka/dtd/TokenType;

.field public static final GT:Lcom/wutka/dtd/TokenType;

.field public static final IDENTIFIER:Lcom/wutka/dtd/TokenType;

.field public static final LPAREN:Lcom/wutka/dtd/TokenType;

.field public static final LT:Lcom/wutka/dtd/TokenType;

.field public static final LTBANG:Lcom/wutka/dtd/TokenType;

.field public static final LTQUES:Lcom/wutka/dtd/TokenType;

.field public static final NMTOKEN:Lcom/wutka/dtd/TokenType;

.field public static final PERCENT:Lcom/wutka/dtd/TokenType;

.field public static final PIPE:Lcom/wutka/dtd/TokenType;

.field public static final PLUS:Lcom/wutka/dtd/TokenType;

.field public static final QUES:Lcom/wutka/dtd/TokenType;

.field public static final QUESGT:Lcom/wutka/dtd/TokenType;

.field public static final RPAREN:Lcom/wutka/dtd/TokenType;

.field public static final STRING:Lcom/wutka/dtd/TokenType;

.field public static letterRanges:[[C


# instance fields
.field protected atEOF:Z

.field protected entityExpansion:Ljava/util/Hashtable;

.field protected expandBuffer:[C

.field protected expandPos:I

.field protected expander:Lcom/wutka/dtd/EntityExpansion;

.field protected in:Lcom/wutka/dtd/Scanner$StreamInfo;

.field protected inputStreams:Ljava/util/Stack;

.field protected nextChar:I

.field protected nextToken:Lcom/wutka/dtd/Token;

.field protected trace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 14
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v1, 0x0

    const-string v2, "LTQUES"

    invoke-direct {v0, v1, v2}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->LTQUES:Lcom/wutka/dtd/TokenType;

    .line 15
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v2, 0x1

    const-string v3, "IDENTIFIER"

    invoke-direct {v0, v2, v3}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    .line 16
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v3, 0x2

    const-string v4, "EQUAL"

    invoke-direct {v0, v3, v4}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->EQUAL:Lcom/wutka/dtd/TokenType;

    .line 17
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v4, 0x3

    const-string v5, "LPAREN"

    invoke-direct {v0, v4, v5}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    .line 18
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v5, 0x4

    const-string v6, "RPAREN"

    invoke-direct {v0, v5, v6}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    .line 19
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v6, 0x5

    const-string v7, "COMMA"

    invoke-direct {v0, v6, v7}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->COMMA:Lcom/wutka/dtd/TokenType;

    .line 20
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v7, 0x6

    const-string v8, "STRING"

    invoke-direct {v0, v7, v8}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    .line 21
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/4 v8, 0x7

    const-string v9, "QUESGT"

    invoke-direct {v0, v8, v9}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->QUESGT:Lcom/wutka/dtd/TokenType;

    .line 22
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v9, 0x8

    const-string v10, "LTBANG"

    invoke-direct {v0, v9, v10}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->LTBANG:Lcom/wutka/dtd/TokenType;

    .line 23
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v10, 0x9

    const-string v11, "GT"

    invoke-direct {v0, v10, v11}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    .line 24
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v11, 0xa

    const-string v12, "PIPE"

    invoke-direct {v0, v11, v12}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    .line 25
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v12, 0xb

    const-string v13, "QUES"

    invoke-direct {v0, v12, v13}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->QUES:Lcom/wutka/dtd/TokenType;

    .line 26
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v13, 0xc

    const-string v14, "PLUS"

    invoke-direct {v0, v13, v14}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->PLUS:Lcom/wutka/dtd/TokenType;

    .line 27
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v14, 0xd

    const-string v15, "ASTERISK"

    invoke-direct {v0, v14, v15}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    .line 28
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v15, 0xe

    const-string v14, "LT"

    invoke-direct {v0, v15, v14}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->LT:Lcom/wutka/dtd/TokenType;

    .line 29
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v14, 0xf

    const-string v15, "EOF"

    invoke-direct {v0, v14, v15}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->EOF:Lcom/wutka/dtd/TokenType;

    .line 30
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v15, 0x10

    const-string v14, "COMMENT"

    invoke-direct {v0, v15, v14}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->COMMENT:Lcom/wutka/dtd/TokenType;

    .line 31
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v14, 0x11

    const-string v15, "PERCENT"

    invoke-direct {v0, v14, v15}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->PERCENT:Lcom/wutka/dtd/TokenType;

    .line 32
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v15, 0x12

    const-string v14, "CONDITIONAL"

    invoke-direct {v0, v15, v14}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->CONDITIONAL:Lcom/wutka/dtd/TokenType;

    .line 34
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v14, 0x13

    const-string v15, "ENDCONDITIONAL"

    invoke-direct {v0, v14, v15}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->ENDCONDITIONAL:Lcom/wutka/dtd/TokenType;

    .line 36
    new-instance v0, Lcom/wutka/dtd/TokenType;

    const/16 v15, 0x14

    const-string v14, "NMTOKEN"

    invoke-direct {v0, v15, v14}, Lcom/wutka/dtd/TokenType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/wutka/dtd/Scanner;->NMTOKEN:Lcom/wutka/dtd/TokenType;

    .line 830
    const/16 v0, 0xca

    new-array v0, v0, [[C

    new-array v14, v3, [C

    fill-array-data v14, :array_0

    aput-object v14, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [C

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    new-array v1, v3, [C

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v3, [C

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v3, [C

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    new-array v1, v3, [C

    fill-array-data v1, :array_7

    aput-object v1, v0, v8

    new-array v1, v3, [C

    fill-array-data v1, :array_8

    aput-object v1, v0, v9

    new-array v1, v3, [C

    fill-array-data v1, :array_9

    aput-object v1, v0, v10

    new-array v1, v3, [C

    fill-array-data v1, :array_a

    aput-object v1, v0, v11

    new-array v1, v3, [C

    fill-array-data v1, :array_b

    aput-object v1, v0, v12

    new-array v1, v3, [C

    fill-array-data v1, :array_c

    aput-object v1, v0, v13

    new-array v1, v3, [C

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_e

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_f

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_10

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_11

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_12

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_13

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_14

    aput-object v1, v0, v15

    new-array v1, v3, [C

    fill-array-data v1, :array_15

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_16

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_17

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_18

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_19

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_1a

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_1b

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_1c

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_1d

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_1e

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_1f

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_20

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_21

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_22

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_23

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_24

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_25

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_26

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_27

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_28

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_29

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_2a

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_2b

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_2c

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_2d

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_2e

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_2f

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_30

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_31

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_32

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_33

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_34

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_35

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_36

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_37

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_38

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_39

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_3a

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_3b

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_3c

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_3d

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_3e

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_3f

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_40

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_41

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_42

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_43

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_44

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_45

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_46

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_47

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_48

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_49

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_4a

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_4b

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_4c

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_4d

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_4e

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_4f

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_50

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_51

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_52

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_53

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_54

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_55

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_56

    const/16 v2, 0x56

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_57

    const/16 v2, 0x57

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_58

    const/16 v2, 0x58

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_59

    const/16 v2, 0x59

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_5a

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_5b

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_5c

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_5d

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_5e

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_5f

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_60

    const/16 v2, 0x60

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_61

    const/16 v2, 0x61

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_62

    const/16 v2, 0x62

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_63

    const/16 v2, 0x63

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_64

    const/16 v2, 0x64

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_65

    const/16 v2, 0x65

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_66

    const/16 v2, 0x66

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_67

    const/16 v2, 0x67

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_68

    const/16 v2, 0x68

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_69

    const/16 v2, 0x69

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_6a

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_6b

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_6c

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_6d

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_6e

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_6f

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_70

    const/16 v2, 0x70

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_71

    const/16 v2, 0x71

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_72

    const/16 v2, 0x72

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_73

    const/16 v2, 0x73

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_74

    const/16 v2, 0x74

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_75

    const/16 v2, 0x75

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_76

    const/16 v2, 0x76

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_77

    const/16 v2, 0x77

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_78

    const/16 v2, 0x78

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_79

    const/16 v2, 0x79

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_7a

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_7b

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_7c

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_7d

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_7e

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_7f

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_80

    const/16 v2, 0x80

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_81

    const/16 v2, 0x81

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_82

    const/16 v2, 0x82

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_83

    const/16 v2, 0x83

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_84

    const/16 v2, 0x84

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_85

    const/16 v2, 0x85

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_86

    const/16 v2, 0x86

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_87

    const/16 v2, 0x87

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_88

    const/16 v2, 0x88

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_89

    const/16 v2, 0x89

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_8a

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_8b

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_8c

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_8d

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_8e

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_8f

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_90

    const/16 v2, 0x90

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_91

    const/16 v2, 0x91

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_92

    const/16 v2, 0x92

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_93

    const/16 v2, 0x93

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_94

    const/16 v2, 0x94

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_95

    const/16 v2, 0x95

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_96

    const/16 v2, 0x96

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_97

    const/16 v2, 0x97

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_98

    const/16 v2, 0x98

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_99

    const/16 v2, 0x99

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_9a

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_9b

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_9c

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_9d

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_9e

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_9f

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a0

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a1

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a2

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a3

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a4

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a5

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a6

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a7

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a8

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_a9

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_aa

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_ab

    const/16 v2, 0xab

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_ac

    const/16 v2, 0xac

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_ad

    const/16 v2, 0xad

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_ae

    const/16 v2, 0xae

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_af

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b0

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b1

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b2

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b3

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b4

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b5

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b6

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b7

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b8

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_b9

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_ba

    const/16 v2, 0xba

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_bb

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_bc

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_bd

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_be

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_bf

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c0

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c1

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c2

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c3

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c4

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c5

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c6

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c7

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c8

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    new-array v1, v3, [C

    fill-array-data v1, :array_c9

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    sput-object v0, Lcom/wutka/dtd/Scanner;->letterRanges:[[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x5as
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x7as
    .end array-data

    :array_2
    .array-data 2
        0xc0s
        0xd6s
    .end array-data

    :array_3
    .array-data 2
        0xd8s
        0xf6s
    .end array-data

    :array_4
    .array-data 2
        0xf8s
        0xffs
    .end array-data

    :array_5
    .array-data 2
        0x100s
        0x131s
    .end array-data

    :array_6
    .array-data 2
        0x134s
        0x13es
    .end array-data

    :array_7
    .array-data 2
        0x141s
        0x148s
    .end array-data

    :array_8
    .array-data 2
        0x14as
        0x17es
    .end array-data

    :array_9
    .array-data 2
        0x180s
        0x1c3s
    .end array-data

    :array_a
    .array-data 2
        0x1cds
        0x1f0s
    .end array-data

    :array_b
    .array-data 2
        0x1f4s
        0x1f5s
    .end array-data

    :array_c
    .array-data 2
        0x1fas
        0x217s
    .end array-data

    :array_d
    .array-data 2
        0x250s
        0x2a8s
    .end array-data

    :array_e
    .array-data 2
        0x2bbs
        0x2c1s
    .end array-data

    :array_f
    .array-data 2
        0x386s
        0x386s
    .end array-data

    :array_10
    .array-data 2
        0x388s
        0x38as
    .end array-data

    :array_11
    .array-data 2
        0x38cs
        0x38cs
    .end array-data

    :array_12
    .array-data 2
        0x38es
        0x3a1s
    .end array-data

    :array_13
    .array-data 2
        0x3a3s
        0x3ces
    .end array-data

    :array_14
    .array-data 2
        0x3d0s
        0x3d6s
    .end array-data

    :array_15
    .array-data 2
        0x3das
        0x3das
    .end array-data

    :array_16
    .array-data 2
        0x3dcs
        0x3dcs
    .end array-data

    :array_17
    .array-data 2
        0x3des
        0x3des
    .end array-data

    :array_18
    .array-data 2
        0x3e0s
        0x3e0s
    .end array-data

    :array_19
    .array-data 2
        0x3e2s
        0x3f3s
    .end array-data

    :array_1a
    .array-data 2
        0x401s
        0x40cs
    .end array-data

    :array_1b
    .array-data 2
        0x40es
        0x44fs
    .end array-data

    :array_1c
    .array-data 2
        0x451s
        0x45cs
    .end array-data

    :array_1d
    .array-data 2
        0x45es
        0x481s
    .end array-data

    :array_1e
    .array-data 2
        0x490s
        0x4c4s
    .end array-data

    :array_1f
    .array-data 2
        0x4c7s
        0x4c8s
    .end array-data

    :array_20
    .array-data 2
        0x4cbs
        0x4ccs
    .end array-data

    :array_21
    .array-data 2
        0x4d0s
        0x4ebs
    .end array-data

    :array_22
    .array-data 2
        0x4ees
        0x4f5s
    .end array-data

    :array_23
    .array-data 2
        0x4f8s
        0x4f9s
    .end array-data

    :array_24
    .array-data 2
        0x531s
        0x556s
    .end array-data

    :array_25
    .array-data 2
        0x559s
        0x559s
    .end array-data

    :array_26
    .array-data 2
        0x561s
        0x586s
    .end array-data

    :array_27
    .array-data 2
        0x5d0s
        0x5eas
    .end array-data

    :array_28
    .array-data 2
        0x5f0s
        0x5f2s
    .end array-data

    :array_29
    .array-data 2
        0x621s
        0x63as
    .end array-data

    :array_2a
    .array-data 2
        0x641s
        0x64as
    .end array-data

    :array_2b
    .array-data 2
        0x671s
        0x6b7s
    .end array-data

    :array_2c
    .array-data 2
        0x6bas
        0x6bes
    .end array-data

    :array_2d
    .array-data 2
        0x6c0s
        0x6ces
    .end array-data

    :array_2e
    .array-data 2
        0x6d0s
        0x6d3s
    .end array-data

    :array_2f
    .array-data 2
        0x6d5s
        0x6d5s
    .end array-data

    :array_30
    .array-data 2
        0x6e5s
        0x6e6s
    .end array-data

    :array_31
    .array-data 2
        0x905s
        0x939s
    .end array-data

    :array_32
    .array-data 2
        0x93ds
        0x93ds
    .end array-data

    :array_33
    .array-data 2
        0x958s
        0x961s
    .end array-data

    :array_34
    .array-data 2
        0x985s
        0x98cs
    .end array-data

    :array_35
    .array-data 2
        0x98fs
        0x990s
    .end array-data

    :array_36
    .array-data 2
        0x993s
        0x9a8s
    .end array-data

    :array_37
    .array-data 2
        0x9aas
        0x9b0s
    .end array-data

    :array_38
    .array-data 2
        0x9b2s
        0x9b2s
    .end array-data

    :array_39
    .array-data 2
        0x9b6s
        0x9b9s
    .end array-data

    :array_3a
    .array-data 2
        0x9dcs
        0x9dds
    .end array-data

    :array_3b
    .array-data 2
        0x9dfs
        0x9e1s
    .end array-data

    :array_3c
    .array-data 2
        0x9f0s
        0x9f1s
    .end array-data

    :array_3d
    .array-data 2
        0xa05s
        0xa0as
    .end array-data

    :array_3e
    .array-data 2
        0xa0fs
        0xa10s
    .end array-data

    :array_3f
    .array-data 2
        0xa13s
        0xa28s
    .end array-data

    :array_40
    .array-data 2
        0xa2as
        0xa30s
    .end array-data

    :array_41
    .array-data 2
        0xa32s
        0xa33s
    .end array-data

    :array_42
    .array-data 2
        0xa35s
        0xa36s
    .end array-data

    :array_43
    .array-data 2
        0xa38s
        0xa39s
    .end array-data

    :array_44
    .array-data 2
        0xa59s
        0xa5cs
    .end array-data

    :array_45
    .array-data 2
        0xa5es
        0xa5es
    .end array-data

    :array_46
    .array-data 2
        0xa72s
        0xa74s
    .end array-data

    :array_47
    .array-data 2
        0xa85s
        0xa8bs
    .end array-data

    :array_48
    .array-data 2
        0xa8ds
        0xa8ds
    .end array-data

    :array_49
    .array-data 2
        0xa8fs
        0xa91s
    .end array-data

    :array_4a
    .array-data 2
        0xa93s
        0xaa8s
    .end array-data

    :array_4b
    .array-data 2
        0xaaas
        0xab0s
    .end array-data

    :array_4c
    .array-data 2
        0xab2s
        0xab3s
    .end array-data

    :array_4d
    .array-data 2
        0xab5s
        0xab9s
    .end array-data

    :array_4e
    .array-data 2
        0xabds
        0xabds
    .end array-data

    :array_4f
    .array-data 2
        0xae0s
        0xae0s
    .end array-data

    :array_50
    .array-data 2
        0xb05s
        0xb0cs
    .end array-data

    :array_51
    .array-data 2
        0xb0fs
        0xb10s
    .end array-data

    :array_52
    .array-data 2
        0xb13s
        0xb28s
    .end array-data

    :array_53
    .array-data 2
        0xb2as
        0xb30s
    .end array-data

    :array_54
    .array-data 2
        0xb32s
        0xb33s
    .end array-data

    :array_55
    .array-data 2
        0xb36s
        0xb39s
    .end array-data

    :array_56
    .array-data 2
        0xb3ds
        0xb3ds
    .end array-data

    :array_57
    .array-data 2
        0xb5cs
        0xb5ds
    .end array-data

    :array_58
    .array-data 2
        0xb5fs
        0xb61s
    .end array-data

    :array_59
    .array-data 2
        0xb85s
        0xb8as
    .end array-data

    :array_5a
    .array-data 2
        0xb8es
        0xb90s
    .end array-data

    :array_5b
    .array-data 2
        0xb92s
        0xb95s
    .end array-data

    :array_5c
    .array-data 2
        0xb99s
        0xb9as
    .end array-data

    :array_5d
    .array-data 2
        0xb9cs
        0xb9cs
    .end array-data

    :array_5e
    .array-data 2
        0xb9es
        0xb9fs
    .end array-data

    :array_5f
    .array-data 2
        0xba3s
        0xba4s
    .end array-data

    :array_60
    .array-data 2
        0xba8s
        0xbaas
    .end array-data

    :array_61
    .array-data 2
        0xbaes
        0xbb5s
    .end array-data

    :array_62
    .array-data 2
        0xbb7s
        0xbb9s
    .end array-data

    :array_63
    .array-data 2
        0xc05s
        0xc0cs
    .end array-data

    :array_64
    .array-data 2
        0xc0es
        0xc10s
    .end array-data

    :array_65
    .array-data 2
        0xc12s
        0xc28s
    .end array-data

    :array_66
    .array-data 2
        0xc2as
        0xc33s
    .end array-data

    :array_67
    .array-data 2
        0xc35s
        0xc39s
    .end array-data

    :array_68
    .array-data 2
        0xc60s
        0xc61s
    .end array-data

    :array_69
    .array-data 2
        0xc85s
        0xc8cs
    .end array-data

    :array_6a
    .array-data 2
        0xc8es
        0xc90s
    .end array-data

    :array_6b
    .array-data 2
        0xc92s
        0xca8s
    .end array-data

    :array_6c
    .array-data 2
        0xcaas
        0xcb3s
    .end array-data

    :array_6d
    .array-data 2
        0xcb5s
        0xcb9s
    .end array-data

    :array_6e
    .array-data 2
        0xcdes
        0xcdes
    .end array-data

    :array_6f
    .array-data 2
        0xce0s
        0xce1s
    .end array-data

    :array_70
    .array-data 2
        0xd05s
        0xd0cs
    .end array-data

    :array_71
    .array-data 2
        0xd0es
        0xd10s
    .end array-data

    :array_72
    .array-data 2
        0xd12s
        0xd28s
    .end array-data

    :array_73
    .array-data 2
        0xd2as
        0xd39s
    .end array-data

    :array_74
    .array-data 2
        0xd60s
        0xd61s
    .end array-data

    :array_75
    .array-data 2
        0xe01s
        0xe2es
    .end array-data

    :array_76
    .array-data 2
        0xe30s
        0xe30s
    .end array-data

    :array_77
    .array-data 2
        0xe32s
        0xe33s
    .end array-data

    :array_78
    .array-data 2
        0xe40s
        0xe45s
    .end array-data

    :array_79
    .array-data 2
        0xe81s
        0xe82s
    .end array-data

    :array_7a
    .array-data 2
        0xe84s
        0xe84s
    .end array-data

    :array_7b
    .array-data 2
        0xe87s
        0xe88s
    .end array-data

    :array_7c
    .array-data 2
        0xe8as
        0xe8as
    .end array-data

    :array_7d
    .array-data 2
        0xe8ds
        0xe8ds
    .end array-data

    :array_7e
    .array-data 2
        0xe94s
        0xe97s
    .end array-data

    :array_7f
    .array-data 2
        0xe99s
        0xe9fs
    .end array-data

    :array_80
    .array-data 2
        0xea1s
        0xea3s
    .end array-data

    :array_81
    .array-data 2
        0xea5s
        0xea5s
    .end array-data

    :array_82
    .array-data 2
        0xea7s
        0xea7s
    .end array-data

    :array_83
    .array-data 2
        0xeaas
        0xeabs
    .end array-data

    :array_84
    .array-data 2
        0xeads
        0xeaes
    .end array-data

    :array_85
    .array-data 2
        0xeb0s
        0xeb0s
    .end array-data

    :array_86
    .array-data 2
        0xeb2s
        0xeb3s
    .end array-data

    :array_87
    .array-data 2
        0xebds
        0xebds
    .end array-data

    :array_88
    .array-data 2
        0xec0s
        0xec4s
    .end array-data

    :array_89
    .array-data 2
        0xf40s
        0xf47s
    .end array-data

    :array_8a
    .array-data 2
        0xf49s
        0xf69s
    .end array-data

    :array_8b
    .array-data 2
        0x10a0s
        0x10c5s
    .end array-data

    :array_8c
    .array-data 2
        0x10d0s
        0x10f6s
    .end array-data

    :array_8d
    .array-data 2
        0x1100s
        0x1100s
    .end array-data

    :array_8e
    .array-data 2
        0x1102s
        0x1103s
    .end array-data

    :array_8f
    .array-data 2
        0x1105s
        0x1107s
    .end array-data

    :array_90
    .array-data 2
        0x1109s
        0x1109s
    .end array-data

    :array_91
    .array-data 2
        0x110bs
        0x110cs
    .end array-data

    :array_92
    .array-data 2
        0x110es
        0x1112s
    .end array-data

    :array_93
    .array-data 2
        0x113cs
        0x113cs
    .end array-data

    :array_94
    .array-data 2
        0x113es
        0x113es
    .end array-data

    :array_95
    .array-data 2
        0x1140s
        0x1140s
    .end array-data

    :array_96
    .array-data 2
        0x114cs
        0x114cs
    .end array-data

    :array_97
    .array-data 2
        0x114es
        0x114es
    .end array-data

    :array_98
    .array-data 2
        0x1150s
        0x1150s
    .end array-data

    :array_99
    .array-data 2
        0x1154s
        0x1155s
    .end array-data

    :array_9a
    .array-data 2
        0x1159s
        0x1159s
    .end array-data

    :array_9b
    .array-data 2
        0x115fs
        0x1161s
    .end array-data

    :array_9c
    .array-data 2
        0x1163s
        0x1163s
    .end array-data

    :array_9d
    .array-data 2
        0x1165s
        0x1165s
    .end array-data

    :array_9e
    .array-data 2
        0x1167s
        0x1167s
    .end array-data

    :array_9f
    .array-data 2
        0x1169s
        0x1169s
    .end array-data

    :array_a0
    .array-data 2
        0x116ds
        0x116es
    .end array-data

    :array_a1
    .array-data 2
        0x1172s
        0x1173s
    .end array-data

    :array_a2
    .array-data 2
        0x1175s
        0x1175s
    .end array-data

    :array_a3
    .array-data 2
        0x119es
        0x119es
    .end array-data

    :array_a4
    .array-data 2
        0x11a8s
        0x11a8s
    .end array-data

    :array_a5
    .array-data 2
        0x11abs
        0x11abs
    .end array-data

    :array_a6
    .array-data 2
        0x11aes
        0x11afs
    .end array-data

    :array_a7
    .array-data 2
        0x11b7s
        0x11b8s
    .end array-data

    :array_a8
    .array-data 2
        0x11bas
        0x11bas
    .end array-data

    :array_a9
    .array-data 2
        0x11bcs
        0x11c2s
    .end array-data

    :array_aa
    .array-data 2
        0x11ebs
        0x11ebs
    .end array-data

    :array_ab
    .array-data 2
        0x11f0s
        0x11f0s
    .end array-data

    :array_ac
    .array-data 2
        0x11f9s
        0x11f9s
    .end array-data

    :array_ad
    .array-data 2
        0x1e00s
        0x1e9bs
    .end array-data

    :array_ae
    .array-data 2
        0x1ea0s
        0x1ef9s
    .end array-data

    :array_af
    .array-data 2
        0x1f00s
        0x1f15s
    .end array-data

    :array_b0
    .array-data 2
        0x1f18s
        0x1f1ds
    .end array-data

    :array_b1
    .array-data 2
        0x1f20s
        0x1f45s
    .end array-data

    :array_b2
    .array-data 2
        0x1f48s
        0x1f4ds
    .end array-data

    :array_b3
    .array-data 2
        0x1f50s
        0x1f57s
    .end array-data

    :array_b4
    .array-data 2
        0x1f59s
        0x1f59s
    .end array-data

    :array_b5
    .array-data 2
        0x1f5bs
        0x1f5bs
    .end array-data

    :array_b6
    .array-data 2
        0x1f5ds
        0x1f5ds
    .end array-data

    :array_b7
    .array-data 2
        0x1f5fs
        0x1f7ds
    .end array-data

    :array_b8
    .array-data 2
        0x1f80s
        0x1fb4s
    .end array-data

    :array_b9
    .array-data 2
        0x1fb6s
        0x1fbcs
    .end array-data

    :array_ba
    .array-data 2
        0x1fbes
        0x1fbes
    .end array-data

    :array_bb
    .array-data 2
        0x1fc2s
        0x1fc4s
    .end array-data

    :array_bc
    .array-data 2
        0x1fc6s
        0x1fccs
    .end array-data

    :array_bd
    .array-data 2
        0x1fd0s
        0x1fd3s
    .end array-data

    :array_be
    .array-data 2
        0x1fd6s
        0x1fdbs
    .end array-data

    :array_bf
    .array-data 2
        0x1fe0s
        0x1fecs
    .end array-data

    :array_c0
    .array-data 2
        0x1ff2s
        0x1ff4s
    .end array-data

    :array_c1
    .array-data 2
        0x1ff6s
        0x1ffcs
    .end array-data

    :array_c2
    .array-data 2
        0x2126s
        0x2126s
    .end array-data

    :array_c3
    .array-data 2
        0x212as
        0x212bs
    .end array-data

    :array_c4
    .array-data 2
        0x212es
        0x212es
    .end array-data

    :array_c5
    .array-data 2
        0x2180s
        0x2182s
    .end array-data

    :array_c6
    .array-data 2
        0x3041s
        0x3094s
    .end array-data

    :array_c7
    .array-data 2
        0x30a1s
        0x30fas
    .end array-data

    :array_c8
    .array-data 2
        0x3105s
        0x312cs
    .end array-data

    :array_c9
    .array-data 2
        -0x5400s
        -0x285ds
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/wutka/dtd/EntityExpansion;)V
    .locals 1
    .param p1, "inReader"    # Ljava/io/Reader;
    .param p2, "anExpander"    # Lcom/wutka/dtd/EntityExpansion;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/wutka/dtd/Scanner;-><init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;ZLcom/wutka/dtd/EntityExpansion;)V
    .locals 2
    .param p1, "inReader"    # Ljava/io/Reader;
    .param p2, "doTrace"    # Z
    .param p3, "anExpander"    # Lcom/wutka/dtd/EntityExpansion;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/wutka/dtd/Scanner$StreamInfo;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/wutka/dtd/Scanner$StreamInfo;-><init>(Lcom/wutka/dtd/Scanner;Ljava/lang/String;Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wutka/dtd/Scanner;->atEOF:Z

    .line 72
    iput-boolean p2, p0, Lcom/wutka/dtd/Scanner;->trace:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    .line 74
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/Scanner;->entityExpansion:Ljava/util/Hashtable;

    .line 75
    iput-object p3, p0, Lcom/wutka/dtd/Scanner;->expander:Lcom/wutka/dtd/EntityExpansion;

    .line 76
    return-void
.end method


# virtual methods
.method public addEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "entityValue"    # Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->entityExpansion:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    return-void
.end method

.method public expand([C)V
    .locals 8
    .param p1, "expandChars"    # [C

    .line 796
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 798
    array-length v0, v0

    iget v4, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    sub-int/2addr v0, v4

    .line 800
    .local v0, "oldCharsLeft":I
    array-length v4, p1

    add-int/2addr v4, v0

    new-array v4, v4, [C

    .line 801
    .local v4, "newExp":[C
    array-length v5, p1

    invoke-static {p1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget-object v5, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    iget v6, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    array-length v7, p1

    invoke-static {v5, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iput v3, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    .line 806
    iput-object v4, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    .line 807
    array-length v3, v4

    if-nez v3, :cond_0

    .line 809
    iput-object v2, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    .line 810
    iput v1, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    .line 812
    .end local v0    # "oldCharsLeft":I
    .end local v4    # "newExp":[C
    :cond_0
    goto :goto_0

    .line 815
    :cond_1
    iput-object p1, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    .line 816
    iput v3, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    .line 817
    array-length v0, p1

    if-nez v0, :cond_2

    .line 819
    iput-object v2, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    .line 820
    iput v1, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    .line 823
    :cond_2
    :goto_0
    return-void
.end method

.method public expandEntity(Ljava/lang/String;)Z
    .locals 6
    .param p1, "entityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->entityExpansion:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 763
    .local v0, "entity":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/Scanner;->expand([C)V

    .line 766
    return v1

    .line 769
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 772
    iget-object v2, p0, Lcom/wutka/dtd/Scanner;->expander:Lcom/wutka/dtd/EntityExpansion;

    invoke-interface {v2, p1}, Lcom/wutka/dtd/EntityExpansion;->expandEntity(Ljava/lang/String;)Lcom/wutka/dtd/DTDEntity;

    move-result-object v2

    .line 773
    .local v2, "realEntity":Lcom/wutka/dtd/DTDEntity;
    if-eqz v2, :cond_2

    .line 776
    invoke-virtual {v2}, Lcom/wutka/dtd/DTDEntity;->getReader()Ljava/io/Reader;

    move-result-object v3

    .line 777
    .local v3, "entityIn":Ljava/io/Reader;
    if-eqz v3, :cond_2

    .line 779
    iget-object v4, p0, Lcom/wutka/dtd/Scanner;->inputStreams:Ljava/util/Stack;

    if-nez v4, :cond_1

    .line 781
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v4, p0, Lcom/wutka/dtd/Scanner;->inputStreams:Ljava/util/Stack;

    .line 784
    :cond_1
    iget-object v4, p0, Lcom/wutka/dtd/Scanner;->inputStreams:Ljava/util/Stack;

    iget-object v5, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    new-instance v4, Lcom/wutka/dtd/Scanner$StreamInfo;

    invoke-virtual {v2}, Lcom/wutka/dtd/DTDEntity;->getExternalId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lcom/wutka/dtd/Scanner$StreamInfo;-><init>(Lcom/wutka/dtd/Scanner;Ljava/lang/String;Ljava/io/Reader;)V

    iput-object v4, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    .line 787
    return v1

    .line 791
    .end local v3    # "entityIn":Ljava/io/Reader;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public get()Lcom/wutka/dtd/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->nextToken:Lcom/wutka/dtd/Token;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->readNextToken()Lcom/wutka/dtd/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/wutka/dtd/Scanner;->nextToken:Lcom/wutka/dtd/Token;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->nextToken:Lcom/wutka/dtd/Token;

    .line 98
    .local v0, "retval":Lcom/wutka/dtd/Token;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wutka/dtd/Scanner;->nextToken:Lcom/wutka/dtd/Token;

    .line 100
    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iget v0, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->column:I

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iget v0, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->lineNumber:I

    return v0
.end method

.method public getUntil(C)Ljava/lang/String;
    .locals 3
    .param p1, "stopChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    .local v0, "out":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v1

    move v2, v1

    .local v2, "ch":I
    if-ltz v1, :cond_1

    .line 183
    if-ne v2, p1, :cond_0

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_0
    int-to-char v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUriId()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iget-object v0, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isBaseChar(C)Z
    .locals 4
    .param p1, "ch"    # C

    .line 592
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/wutka/dtd/Scanner;->letterRanges:[[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    .line 594
    aget-object v1, v1, v0

    aget-char v2, v1, v3

    if-ge p1, v2, :cond_0

    return v3

    .line 595
    :cond_0
    if-lt p1, v2, :cond_1

    const/4 v2, 0x1

    aget-char v1, v1, v2

    if-gt p1, v1, :cond_1

    .line 596
    return v2

    .line 592
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "i":I
    :cond_2
    return v3
.end method

.method public isCombiningChar(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 646
    const/4 v0, 0x0

    const/16 v1, 0x300

    if-ge p1, v1, :cond_0

    return v0

    .line 647
    :cond_0
    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    const/16 v1, 0x345

    if-gt p1, v1, :cond_1

    return v2

    .line 648
    :cond_1
    const/16 v1, 0x360

    if-lt p1, v1, :cond_2

    const/16 v1, 0x361

    if-gt p1, v1, :cond_2

    return v2

    .line 649
    :cond_2
    const/16 v1, 0x483

    if-lt p1, v1, :cond_3

    const/16 v1, 0x486

    if-gt p1, v1, :cond_3

    return v2

    .line 650
    :cond_3
    const/16 v1, 0x591

    if-lt p1, v1, :cond_4

    const/16 v1, 0x5a1

    if-gt p1, v1, :cond_4

    return v2

    .line 651
    :cond_4
    const/16 v1, 0x5a3

    if-lt p1, v1, :cond_5

    const/16 v1, 0x5b9

    if-gt p1, v1, :cond_5

    return v2

    .line 652
    :cond_5
    const/16 v1, 0x5bb

    if-lt p1, v1, :cond_6

    const/16 v1, 0x5bd

    if-gt p1, v1, :cond_6

    return v2

    .line 653
    :cond_6
    const/16 v1, 0x5bf

    if-ne p1, v1, :cond_7

    return v2

    .line 654
    :cond_7
    const/16 v1, 0x5c1

    if-lt p1, v1, :cond_8

    const/16 v1, 0x5c2

    if-gt p1, v1, :cond_8

    return v2

    .line 655
    :cond_8
    const/16 v1, 0x5c4

    if-ne p1, v1, :cond_9

    return v2

    .line 656
    :cond_9
    const/16 v1, 0x64b

    if-lt p1, v1, :cond_a

    const/16 v1, 0x652

    if-gt p1, v1, :cond_a

    return v2

    .line 657
    :cond_a
    const/16 v1, 0x670

    if-ne p1, v1, :cond_b

    return v2

    .line 658
    :cond_b
    const/16 v1, 0x6d6

    if-lt p1, v1, :cond_c

    const/16 v1, 0x6dc

    if-gt p1, v1, :cond_c

    return v2

    .line 659
    :cond_c
    const/16 v1, 0x6dd

    if-lt p1, v1, :cond_d

    const/16 v1, 0x6df

    if-gt p1, v1, :cond_d

    return v2

    .line 660
    :cond_d
    const/16 v1, 0x6e0

    if-lt p1, v1, :cond_e

    const/16 v1, 0x6e4

    if-gt p1, v1, :cond_e

    return v2

    .line 661
    :cond_e
    const/16 v1, 0x6e7

    if-lt p1, v1, :cond_f

    const/16 v1, 0x6e8

    if-gt p1, v1, :cond_f

    return v2

    .line 662
    :cond_f
    const/16 v1, 0x6ea

    if-lt p1, v1, :cond_10

    const/16 v1, 0x6ed

    if-gt p1, v1, :cond_10

    return v2

    .line 663
    :cond_10
    const/16 v1, 0x901

    if-lt p1, v1, :cond_11

    const/16 v1, 0x903

    if-gt p1, v1, :cond_11

    return v2

    .line 664
    :cond_11
    const/16 v1, 0x93c

    if-ne p1, v1, :cond_12

    return v2

    .line 665
    :cond_12
    const/16 v1, 0x93e

    if-lt p1, v1, :cond_13

    const/16 v1, 0x94c

    if-gt p1, v1, :cond_13

    return v2

    .line 666
    :cond_13
    const/16 v1, 0x94d

    if-ne p1, v1, :cond_14

    return v2

    .line 667
    :cond_14
    const/16 v1, 0x951

    if-lt p1, v1, :cond_15

    const/16 v1, 0x954

    if-gt p1, v1, :cond_15

    return v2

    .line 668
    :cond_15
    const/16 v1, 0x962

    if-lt p1, v1, :cond_16

    const/16 v1, 0x963

    if-gt p1, v1, :cond_16

    return v2

    .line 669
    :cond_16
    const/16 v1, 0x981

    if-lt p1, v1, :cond_17

    const/16 v1, 0x983

    if-gt p1, v1, :cond_17

    return v2

    .line 670
    :cond_17
    const/16 v1, 0x9bc

    if-ne p1, v1, :cond_18

    return v2

    .line 671
    :cond_18
    const/16 v1, 0x9be

    if-ne p1, v1, :cond_19

    return v2

    .line 672
    :cond_19
    const/16 v1, 0x9bf

    if-ne p1, v1, :cond_1a

    return v2

    .line 673
    :cond_1a
    const/16 v1, 0x9c0

    if-lt p1, v1, :cond_1b

    const/16 v1, 0x9c4

    if-gt p1, v1, :cond_1b

    return v2

    .line 674
    :cond_1b
    const/16 v1, 0x9c7

    if-lt p1, v1, :cond_1c

    const/16 v1, 0x9c8

    if-gt p1, v1, :cond_1c

    return v2

    .line 675
    :cond_1c
    const/16 v1, 0x9cb

    if-lt p1, v1, :cond_1d

    const/16 v1, 0x9cd

    if-gt p1, v1, :cond_1d

    return v2

    .line 676
    :cond_1d
    const/16 v1, 0x9d7

    if-ne p1, v1, :cond_1e

    return v2

    .line 677
    :cond_1e
    const/16 v1, 0x9e2

    if-lt p1, v1, :cond_1f

    const/16 v1, 0x9e3

    if-gt p1, v1, :cond_1f

    return v2

    .line 678
    :cond_1f
    const/16 v1, 0xa02

    if-ne p1, v1, :cond_20

    return v2

    .line 679
    :cond_20
    const/16 v1, 0xa3c

    if-ne p1, v1, :cond_21

    return v2

    .line 680
    :cond_21
    const/16 v1, 0xa3e

    if-ne p1, v1, :cond_22

    return v2

    .line 681
    :cond_22
    const/16 v1, 0xa3f

    if-ne p1, v1, :cond_23

    return v2

    .line 682
    :cond_23
    const/16 v1, 0xa40

    if-lt p1, v1, :cond_24

    const/16 v1, 0xa42

    if-gt p1, v1, :cond_24

    return v2

    .line 683
    :cond_24
    const/16 v1, 0xa47

    if-lt p1, v1, :cond_25

    const/16 v1, 0xa48

    if-gt p1, v1, :cond_25

    return v2

    .line 684
    :cond_25
    const/16 v1, 0xa4b

    if-lt p1, v1, :cond_26

    const/16 v1, 0xa4d

    if-gt p1, v1, :cond_26

    return v2

    .line 685
    :cond_26
    const/16 v1, 0xa70

    if-lt p1, v1, :cond_27

    const/16 v1, 0xa71

    if-gt p1, v1, :cond_27

    return v2

    .line 686
    :cond_27
    const/16 v1, 0xa81

    if-lt p1, v1, :cond_28

    const/16 v1, 0xa83

    if-gt p1, v1, :cond_28

    return v2

    .line 687
    :cond_28
    const/16 v1, 0xabc

    if-ne p1, v1, :cond_29

    return v2

    .line 688
    :cond_29
    const/16 v1, 0xabe

    if-lt p1, v1, :cond_2a

    const/16 v1, 0xac5

    if-gt p1, v1, :cond_2a

    return v2

    .line 689
    :cond_2a
    const/16 v1, 0xac7

    if-lt p1, v1, :cond_2b

    const/16 v1, 0xac9

    if-gt p1, v1, :cond_2b

    return v2

    .line 690
    :cond_2b
    const/16 v1, 0xacb

    if-lt p1, v1, :cond_2c

    const/16 v1, 0xacd

    if-gt p1, v1, :cond_2c

    return v2

    .line 691
    :cond_2c
    const/16 v1, 0xb01

    if-lt p1, v1, :cond_2d

    const/16 v1, 0xb03

    if-gt p1, v1, :cond_2d

    return v2

    .line 692
    :cond_2d
    const/16 v1, 0xb3c

    if-ne p1, v1, :cond_2e

    return v2

    .line 693
    :cond_2e
    const/16 v1, 0xb3e

    if-lt p1, v1, :cond_2f

    const/16 v1, 0xb43

    if-gt p1, v1, :cond_2f

    return v2

    .line 694
    :cond_2f
    const/16 v1, 0xb47

    if-lt p1, v1, :cond_30

    const/16 v1, 0xb48

    if-gt p1, v1, :cond_30

    return v2

    .line 695
    :cond_30
    const/16 v1, 0xb4b

    if-lt p1, v1, :cond_31

    const/16 v1, 0xb4d

    if-gt p1, v1, :cond_31

    return v2

    .line 696
    :cond_31
    const/16 v1, 0xb56

    if-lt p1, v1, :cond_32

    const/16 v1, 0xb57

    if-gt p1, v1, :cond_32

    return v2

    .line 697
    :cond_32
    const/16 v1, 0xb82

    if-lt p1, v1, :cond_33

    const/16 v1, 0xb83

    if-gt p1, v1, :cond_33

    return v2

    .line 698
    :cond_33
    const/16 v1, 0xbbe

    if-lt p1, v1, :cond_34

    const/16 v1, 0xbc2

    if-gt p1, v1, :cond_34

    return v2

    .line 699
    :cond_34
    const/16 v1, 0xbc6

    if-lt p1, v1, :cond_35

    const/16 v1, 0xbc8

    if-gt p1, v1, :cond_35

    return v2

    .line 700
    :cond_35
    const/16 v1, 0xbca

    if-lt p1, v1, :cond_36

    const/16 v1, 0xbcd

    if-gt p1, v1, :cond_36

    return v2

    .line 701
    :cond_36
    const/16 v1, 0xbd7

    if-ne p1, v1, :cond_37

    return v2

    .line 702
    :cond_37
    const/16 v1, 0xc01

    if-lt p1, v1, :cond_38

    const/16 v1, 0xc03

    if-gt p1, v1, :cond_38

    return v2

    .line 703
    :cond_38
    const/16 v1, 0xc3e

    if-lt p1, v1, :cond_39

    const/16 v1, 0xc44

    if-gt p1, v1, :cond_39

    return v2

    .line 704
    :cond_39
    const/16 v1, 0xc46

    if-lt p1, v1, :cond_3a

    const/16 v1, 0xc48

    if-gt p1, v1, :cond_3a

    return v2

    .line 705
    :cond_3a
    const/16 v1, 0xc4a

    if-lt p1, v1, :cond_3b

    const/16 v1, 0xc4d

    if-gt p1, v1, :cond_3b

    return v2

    .line 706
    :cond_3b
    const/16 v1, 0xc55

    if-lt p1, v1, :cond_3c

    const/16 v1, 0xc56

    if-gt p1, v1, :cond_3c

    return v2

    .line 707
    :cond_3c
    const/16 v1, 0xc82

    if-lt p1, v1, :cond_3d

    const/16 v1, 0xc83

    if-gt p1, v1, :cond_3d

    return v2

    .line 708
    :cond_3d
    const/16 v1, 0xcbe

    if-lt p1, v1, :cond_3e

    const/16 v1, 0xcc4

    if-gt p1, v1, :cond_3e

    return v2

    .line 709
    :cond_3e
    const/16 v1, 0xcc6

    if-lt p1, v1, :cond_3f

    const/16 v1, 0xcc8

    if-gt p1, v1, :cond_3f

    return v2

    .line 710
    :cond_3f
    const/16 v1, 0xcca

    if-lt p1, v1, :cond_40

    const/16 v1, 0xccd

    if-gt p1, v1, :cond_40

    return v2

    .line 711
    :cond_40
    const/16 v1, 0xcd5

    if-lt p1, v1, :cond_41

    const/16 v1, 0xcd6

    if-gt p1, v1, :cond_41

    return v2

    .line 712
    :cond_41
    const/16 v1, 0xd02

    if-lt p1, v1, :cond_42

    const/16 v1, 0xd03

    if-gt p1, v1, :cond_42

    return v2

    .line 713
    :cond_42
    const/16 v1, 0xd3e

    if-lt p1, v1, :cond_43

    const/16 v1, 0xd43

    if-gt p1, v1, :cond_43

    return v2

    .line 714
    :cond_43
    const/16 v1, 0xd46

    if-lt p1, v1, :cond_44

    const/16 v1, 0xd48

    if-gt p1, v1, :cond_44

    return v2

    .line 715
    :cond_44
    const/16 v1, 0xd4a

    if-lt p1, v1, :cond_45

    const/16 v1, 0xd4d

    if-gt p1, v1, :cond_45

    return v2

    .line 716
    :cond_45
    const/16 v1, 0xd57

    if-ne p1, v1, :cond_46

    return v2

    .line 717
    :cond_46
    const/16 v1, 0xe31

    if-ne p1, v1, :cond_47

    return v2

    .line 718
    :cond_47
    const/16 v1, 0xe34

    if-lt p1, v1, :cond_48

    const/16 v1, 0xe3a

    if-gt p1, v1, :cond_48

    return v2

    .line 719
    :cond_48
    const/16 v1, 0xe47

    if-lt p1, v1, :cond_49

    const/16 v1, 0xe4e

    if-gt p1, v1, :cond_49

    return v2

    .line 720
    :cond_49
    const/16 v1, 0xeb1

    if-ne p1, v1, :cond_4a

    return v2

    .line 721
    :cond_4a
    const/16 v1, 0xeb4

    if-lt p1, v1, :cond_4b

    const/16 v1, 0xeb9

    if-gt p1, v1, :cond_4b

    return v2

    .line 722
    :cond_4b
    const/16 v1, 0xebb

    if-lt p1, v1, :cond_4c

    const/16 v1, 0xebc

    if-gt p1, v1, :cond_4c

    return v2

    .line 723
    :cond_4c
    const/16 v1, 0xec8

    if-lt p1, v1, :cond_4d

    const/16 v1, 0xecd

    if-gt p1, v1, :cond_4d

    return v2

    .line 724
    :cond_4d
    const/16 v1, 0xf18

    if-lt p1, v1, :cond_4e

    const/16 v1, 0xf19

    if-gt p1, v1, :cond_4e

    return v2

    .line 725
    :cond_4e
    const/16 v1, 0xf35

    if-ne p1, v1, :cond_4f

    return v2

    .line 726
    :cond_4f
    const/16 v1, 0xf37

    if-ne p1, v1, :cond_50

    return v2

    .line 727
    :cond_50
    const/16 v1, 0xf39

    if-ne p1, v1, :cond_51

    return v2

    .line 728
    :cond_51
    const/16 v1, 0xf3e

    if-ne p1, v1, :cond_52

    return v2

    .line 729
    :cond_52
    const/16 v1, 0xf3f

    if-ne p1, v1, :cond_53

    return v2

    .line 730
    :cond_53
    const/16 v1, 0xf71

    if-lt p1, v1, :cond_54

    const/16 v1, 0xf84

    if-gt p1, v1, :cond_54

    return v2

    .line 731
    :cond_54
    const/16 v1, 0xf86

    if-lt p1, v1, :cond_55

    const/16 v1, 0xf8b

    if-gt p1, v1, :cond_55

    return v2

    .line 732
    :cond_55
    const/16 v1, 0xf90

    if-lt p1, v1, :cond_56

    const/16 v1, 0xf95

    if-gt p1, v1, :cond_56

    return v2

    .line 733
    :cond_56
    const/16 v1, 0xf97

    if-ne p1, v1, :cond_57

    return v2

    .line 734
    :cond_57
    const/16 v1, 0xf99

    if-lt p1, v1, :cond_58

    const/16 v1, 0xfad

    if-gt p1, v1, :cond_58

    return v2

    .line 735
    :cond_58
    const/16 v1, 0xfb1

    if-lt p1, v1, :cond_59

    const/16 v1, 0xfb7

    if-gt p1, v1, :cond_59

    return v2

    .line 736
    :cond_59
    const/16 v1, 0xfb9

    if-ne p1, v1, :cond_5a

    return v2

    .line 737
    :cond_5a
    const/16 v1, 0x20d0

    if-lt p1, v1, :cond_5b

    const/16 v1, 0x20dc

    if-gt p1, v1, :cond_5b

    return v2

    .line 738
    :cond_5b
    const/16 v1, 0x20e1

    if-ne p1, v1, :cond_5c

    return v2

    .line 739
    :cond_5c
    const/16 v1, 0x302a

    if-lt p1, v1, :cond_5d

    const/16 v1, 0x302f

    if-gt p1, v1, :cond_5d

    return v2

    .line 740
    :cond_5d
    const/16 v1, 0x3099

    if-ne p1, v1, :cond_5e

    return v2

    .line 741
    :cond_5e
    const/16 v1, 0x309a

    if-ne p1, v1, :cond_5f

    return v2

    .line 743
    :cond_5f
    return v0
.end method

.method public isDigit(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 612
    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    return v0

    .line 613
    :cond_0
    const/16 v1, 0x660

    const/4 v2, 0x0

    if-ge p1, v1, :cond_1

    return v2

    .line 614
    :cond_1
    if-lt p1, v1, :cond_2

    const/16 v1, 0x669

    if-gt p1, v1, :cond_2

    return v0

    .line 615
    :cond_2
    const/16 v1, 0x6f0

    if-ge p1, v1, :cond_3

    return v2

    .line 616
    :cond_3
    if-lt p1, v1, :cond_4

    const/16 v1, 0x6f9

    if-gt p1, v1, :cond_4

    return v0

    .line 617
    :cond_4
    const/16 v1, 0x966

    if-ge p1, v1, :cond_5

    return v2

    .line 618
    :cond_5
    if-lt p1, v1, :cond_6

    const/16 v1, 0x96f

    if-gt p1, v1, :cond_6

    return v0

    .line 619
    :cond_6
    const/16 v1, 0x9e6

    if-ge p1, v1, :cond_7

    return v2

    .line 620
    :cond_7
    if-lt p1, v1, :cond_8

    const/16 v1, 0x9ef

    if-gt p1, v1, :cond_8

    return v0

    .line 621
    :cond_8
    const/16 v1, 0xa66

    if-ge p1, v1, :cond_9

    return v2

    .line 622
    :cond_9
    if-lt p1, v1, :cond_a

    const/16 v1, 0xa6f

    if-gt p1, v1, :cond_a

    return v0

    .line 623
    :cond_a
    const/16 v1, 0xae6

    if-ge p1, v1, :cond_b

    return v2

    .line 624
    :cond_b
    if-lt p1, v1, :cond_c

    const/16 v1, 0xaef

    if-gt p1, v1, :cond_c

    return v0

    .line 625
    :cond_c
    const/16 v1, 0xb66

    if-ge p1, v1, :cond_d

    return v2

    .line 626
    :cond_d
    if-lt p1, v1, :cond_e

    const/16 v1, 0xb6f

    if-gt p1, v1, :cond_e

    return v0

    .line 627
    :cond_e
    const/16 v1, 0xbe7

    if-ge p1, v1, :cond_f

    return v2

    .line 628
    :cond_f
    if-lt p1, v1, :cond_10

    const/16 v1, 0xbef

    if-gt p1, v1, :cond_10

    return v0

    .line 629
    :cond_10
    const/16 v1, 0xc66

    if-ge p1, v1, :cond_11

    return v2

    .line 630
    :cond_11
    if-lt p1, v1, :cond_12

    const/16 v1, 0xc6f

    if-gt p1, v1, :cond_12

    return v0

    .line 631
    :cond_12
    const/16 v1, 0xce6

    if-ge p1, v1, :cond_13

    return v2

    .line 632
    :cond_13
    if-lt p1, v1, :cond_14

    const/16 v1, 0xcef

    if-gt p1, v1, :cond_14

    return v0

    .line 633
    :cond_14
    const/16 v1, 0xd66

    if-ge p1, v1, :cond_15

    return v2

    .line 634
    :cond_15
    if-lt p1, v1, :cond_16

    const/16 v1, 0xd6f

    if-gt p1, v1, :cond_16

    return v0

    .line 635
    :cond_16
    const/16 v1, 0xe50

    if-ge p1, v1, :cond_17

    return v2

    .line 636
    :cond_17
    if-lt p1, v1, :cond_18

    const/16 v1, 0xe59

    if-gt p1, v1, :cond_18

    return v0

    .line 637
    :cond_18
    const/16 v1, 0xed0

    if-ge p1, v1, :cond_19

    return v2

    .line 638
    :cond_19
    if-lt p1, v1, :cond_1a

    const/16 v1, 0xed9

    if-gt p1, v1, :cond_1a

    return v0

    .line 639
    :cond_1a
    const/16 v1, 0xf20

    if-ge p1, v1, :cond_1b

    return v2

    .line 640
    :cond_1b
    if-lt p1, v1, :cond_1c

    const/16 v1, 0xf29

    if-gt p1, v1, :cond_1c

    return v0

    .line 641
    :cond_1c
    return v2
.end method

.method public isExtender(C)Z
    .locals 2
    .param p1, "ch"    # C

    .line 748
    const/4 v0, 0x0

    const/16 v1, 0xb7

    if-ge p1, v1, :cond_0

    return v0

    .line 750
    :cond_0
    if-eq p1, v1, :cond_4

    const/16 v1, 0x2d0

    if-eq p1, v1, :cond_4

    const/16 v1, 0x2d1

    if-eq p1, v1, :cond_4

    const/16 v1, 0x387

    if-eq p1, v1, :cond_4

    const/16 v1, 0x640

    if-eq p1, v1, :cond_4

    const/16 v1, 0xe46

    if-eq p1, v1, :cond_4

    const/16 v1, 0x3031

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3035

    if-le p1, v1, :cond_4

    :cond_1
    const/16 v1, 0x309d

    if-lt p1, v1, :cond_2

    const/16 v1, 0x309e

    if-le p1, v1, :cond_4

    :cond_2
    const/16 v1, 0x30fc

    if-lt p1, v1, :cond_3

    const/16 v1, 0x30fe

    if-gt p1, v1, :cond_3

    goto :goto_0

    .line 756
    :cond_3
    return v0

    .line 754
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isIdentifierChar(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 566
    invoke-virtual {p0, p1}, Lcom/wutka/dtd/Scanner;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 569
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isIdeographic(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 603
    const/4 v0, 0x0

    const/16 v1, 0x4e00

    if-ge p1, v1, :cond_0

    return v0

    .line 604
    :cond_0
    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    const v1, 0x9fa5

    if-gt p1, v1, :cond_1

    return v2

    .line 605
    :cond_1
    const/16 v1, 0x3007

    if-ne p1, v1, :cond_2

    return v2

    .line 606
    :cond_2
    const/16 v1, 0x3021

    if-lt p1, v1, :cond_3

    const/16 v1, 0x3029

    if-gt p1, v1, :cond_3

    return v2

    .line 607
    :cond_3
    return v0
.end method

.method public isLetter(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 587
    invoke-virtual {p0, p1}, Lcom/wutka/dtd/Scanner;->isBaseChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/wutka/dtd/Scanner;->isIdeographic(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNameChar(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 576
    invoke-virtual {p0, p1}, Lcom/wutka/dtd/Scanner;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/wutka/dtd/Scanner;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/wutka/dtd/Scanner;->isCombiningChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/wutka/dtd/Scanner;->isExtender(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 580
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Lcom/wutka/dtd/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->nextToken:Lcom/wutka/dtd/Token;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->readNextToken()Lcom/wutka/dtd/Token;

    move-result-object v0

    iput-object v0, p0, Lcom/wutka/dtd/Scanner;->nextToken:Lcom/wutka/dtd/Token;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->nextToken:Lcom/wutka/dtd/Token;

    return-object v0
.end method

.method protected peekChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    if-eqz v0, :cond_0

    .line 125
    iget v1, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    aget-char v0, v0, v1

    return v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/wutka/dtd/Scanner;->nextChar:I

    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->readNextChar()I

    move-result v0

    iput v0, p0, Lcom/wutka/dtd/Scanner;->nextChar:I

    .line 131
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iget v1, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->column:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->column:I

    .line 132
    iget v0, p0, Lcom/wutka/dtd/Scanner;->nextChar:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iget v1, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->lineNumber:I

    .line 135
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iput v2, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->column:I

    .line 139
    :cond_1
    iget v0, p0, Lcom/wutka/dtd/Scanner;->nextChar:I

    return v0
.end method

.method protected read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    if-eqz v0, :cond_2

    .line 147
    iget v1, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    aget-char v1, v0, v1

    .line 148
    .local v1, "expNextChar":I
    array-length v0, v0

    if-lt v2, v0, :cond_0

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/wutka/dtd/Scanner;->expandPos:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wutka/dtd/Scanner;->expandBuffer:[C

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/wutka/dtd/Scanner;->trace:Z

    if-eqz v0, :cond_1

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(C)V

    .line 157
    :cond_1
    return v1

    .line 159
    .end local v1    # "expNextChar":I
    :cond_2
    iget v0, p0, Lcom/wutka/dtd/Scanner;->nextChar:I

    if-nez v0, :cond_3

    .line 161
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    .line 164
    :cond_3
    iget v0, p0, Lcom/wutka/dtd/Scanner;->nextChar:I

    .line 165
    .local v0, "retval":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/wutka/dtd/Scanner;->nextChar:I

    .line 167
    iget-boolean v1, p0, Lcom/wutka/dtd/Scanner;->trace:Z

    if-eqz v1, :cond_4

    .line 169
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 171
    :cond_4
    return v0
.end method

.method protected readNextChar()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iget-object v0, v0, Lcom/wutka/dtd/Scanner$StreamInfo;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 108
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/wutka/dtd/Scanner;->inputStreams:Ljava/util/Stack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    iget-object v1, v1, Lcom/wutka/dtd/Scanner$StreamInfo;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 113
    iget-object v1, p0, Lcom/wutka/dtd/Scanner;->inputStreams:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wutka/dtd/Scanner$StreamInfo;

    iput-object v1, p0, Lcom/wutka/dtd/Scanner;->in:Lcom/wutka/dtd/Scanner$StreamInfo;

    .line 114
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->readNextChar()I

    move-result v1

    return v1

    .line 117
    :cond_0
    return v0
.end method

.method protected readNextToken()Lcom/wutka/dtd/Token;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    .line 214
    .local v0, "ch":I
    const/16 v1, 0x3c

    const/16 v2, 0x3f

    const/16 v3, 0x3e

    if-ne v0, v1, :cond_a

    .line 216
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v0

    .line 217
    const/16 v1, 0x21

    if-ne v0, v1, :cond_8

    .line 219
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 221
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 225
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->CONDITIONAL:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 230
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LTBANG:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 235
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 241
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 243
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v1, "buff":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v4

    const-string v5, "Unterminated comment: <!--"

    if-ltz v4, :cond_6

    .line 254
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 261
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v4

    if-ltz v4, :cond_5

    .line 268
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 271
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 278
    new-instance v2, Lcom/wutka/dtd/Token;

    sget-object v3, Lcom/wutka/dtd/Scanner;->COMMENT:Lcom/wutka/dtd/TokenType;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V

    return-object v2

    .line 273
    :cond_3
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Invalid character sequence --"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2

    .line 282
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 285
    goto :goto_1

    .line 263
    :cond_5
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2

    .line 248
    :cond_6
    new-instance v2, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v5

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v2

    .line 237
    .end local v1    # "buff":Ljava/lang/StringBuffer;
    :cond_7
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid character sequence <!-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 288
    :cond_8
    if-ne v0, v2, :cond_9

    .line 290
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 291
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LTQUES:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 295
    :cond_9
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LT:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 298
    :cond_a
    if-ne v0, v2, :cond_b

    .line 313
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->QUES:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 315
    :cond_b
    const/16 v1, 0x22

    if-eq v0, v1, :cond_28

    const/16 v1, 0x27

    if-ne v0, v1, :cond_c

    goto/16 :goto_8

    .line 339
    :cond_c
    const/16 v1, 0x28

    if-ne v0, v1, :cond_d

    .line 341
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->LPAREN:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 343
    :cond_d
    const/16 v1, 0x29

    if-ne v0, v1, :cond_e

    .line 345
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->RPAREN:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 347
    :cond_e
    const/16 v1, 0x7c

    if-ne v0, v1, :cond_f

    .line 349
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->PIPE:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 351
    :cond_f
    if-ne v0, v3, :cond_10

    .line 353
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->GT:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 355
    :cond_10
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_11

    .line 357
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->EQUAL:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 359
    :cond_11
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_12

    .line 361
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->ASTERISK:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 363
    :cond_12
    const/16 v1, 0x5d

    const-string v2, "Illegal character in input stream: "

    if-ne v0, v1, :cond_15

    .line 365
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v4

    if-ne v4, v1, :cond_14

    .line 371
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v1

    if-ne v1, v3, :cond_13

    .line 378
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->ENDCONDITIONAL:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 373
    :cond_13
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 367
    :cond_14
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 380
    :cond_15
    const/16 v1, 0x23

    if-ne v0, v1, :cond_17

    .line 382
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 383
    .restart local v1    # "buff":Ljava/lang/StringBuffer;
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/Scanner;->isIdentifierChar(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 387
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 389
    :goto_2
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/Scanner;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 391
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 392
    goto :goto_2

    .line 394
    :cond_16
    new-instance v2, Lcom/wutka/dtd/Token;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V

    return-object v2

    .line 396
    .end local v1    # "buff":Ljava/lang/StringBuffer;
    :cond_17
    const/16 v1, 0x26

    const/4 v3, 0x1

    const/16 v4, 0x25

    if-eq v0, v1, :cond_22

    if-ne v0, v4, :cond_18

    goto/16 :goto_5

    .line 441
    :cond_18
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_19

    .line 443
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->PLUS:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 445
    :cond_19
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1a

    .line 447
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->COMMA:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 449
    :cond_1a
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/Scanner;->isIdentifierChar(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 451
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 452
    .restart local v1    # "buff":Ljava/lang/StringBuffer;
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    :goto_3
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/Scanner;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 456
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    goto :goto_3

    .line 458
    :cond_1b
    new-instance v2, Lcom/wutka/dtd/Token;

    sget-object v3, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V

    return-object v2

    .line 460
    .end local v1    # "buff":Ljava/lang/StringBuffer;
    :cond_1c
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/wutka/dtd/Scanner;->isNameChar(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 462
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 463
    .restart local v1    # "buff":Ljava/lang/StringBuffer;
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 465
    :goto_4
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lcom/wutka/dtd/Scanner;->isNameChar(C)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 467
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    goto :goto_4

    .line 469
    :cond_1d
    new-instance v2, Lcom/wutka/dtd/Token;

    sget-object v3, Lcom/wutka/dtd/Scanner;->NMTOKEN:Lcom/wutka/dtd/TokenType;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V

    return-object v2

    .line 471
    .end local v1    # "buff":Ljava/lang/StringBuffer;
    :cond_1e
    if-gez v0, :cond_20

    .line 473
    iget-boolean v1, p0, Lcom/wutka/dtd/Scanner;->atEOF:Z

    if-nez v1, :cond_1f

    .line 477
    iput-boolean v3, p0, Lcom/wutka/dtd/Scanner;->atEOF:Z

    .line 478
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->EOF:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 475
    :cond_1f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read past EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_20
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 482
    goto/16 :goto_0

    .line 486
    :cond_21
    new-instance v1, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v4

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v1

    .line 398
    :cond_22
    :goto_5
    if-ne v0, v4, :cond_23

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 400
    new-instance v1, Lcom/wutka/dtd/Token;

    sget-object v2, Lcom/wutka/dtd/Scanner;->PERCENT:Lcom/wutka/dtd/TokenType;

    invoke-direct {v1, v2}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;)V

    return-object v1

    .line 403
    :cond_23
    if-ne v0, v4, :cond_24

    goto :goto_6

    :cond_24
    const/4 v3, 0x0

    :goto_6
    move v1, v3

    .line 405
    .local v1, "peRef":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 406
    .local v2, "buff":Ljava/lang/StringBuffer;
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Lcom/wutka/dtd/Scanner;->isIdentifierChar(C)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 410
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    :goto_7
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Lcom/wutka/dtd/Scanner;->isNameChar(C)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 413
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    goto :goto_7

    .line 417
    :cond_25
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_27

    .line 424
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 426
    if-eqz v1, :cond_26

    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wutka/dtd/Scanner;->expandEntity(Ljava/lang/String;)Z

    .line 430
    goto/16 :goto_0

    .line 439
    :cond_26
    new-instance v3, Lcom/wutka/dtd/Token;

    sget-object v4, Lcom/wutka/dtd/Scanner;->IDENTIFIER:Lcom/wutka/dtd/TokenType;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V

    return-object v3

    .line 419
    :cond_27
    new-instance v3, Lcom/wutka/dtd/DTDParseException;

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getUriId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Expected \';\' after reference "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", found \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getLineNumber()I

    move-result v6

    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->getColumn()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/wutka/dtd/DTDParseException;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    throw v3

    .line 317
    .end local v1    # "peRef":Z
    .end local v2    # "buff":Ljava/lang/StringBuffer;
    :cond_28
    :goto_8
    move v1, v0

    .line 319
    .local v1, "quoteChar":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 320
    .restart local v2    # "buff":Ljava/lang/StringBuffer;
    :goto_9
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->peekChar()I

    move-result v3

    if-eq v3, v1, :cond_2b

    .line 322
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    .line 323
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_29

    .line 325
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    goto :goto_9

    .line 327
    :cond_29
    if-gez v0, :cond_2a

    .line 329
    goto :goto_a

    .line 333
    :cond_2a
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 335
    goto :goto_9

    .line 336
    :cond_2b
    :goto_a
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    .line 337
    new-instance v3, Lcom/wutka/dtd/Token;

    sget-object v4, Lcom/wutka/dtd/Scanner;->STRING:Lcom/wutka/dtd/TokenType;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/wutka/dtd/Token;-><init>(Lcom/wutka/dtd/TokenType;Ljava/lang/String;)V

    return-object v3
.end method

.method public skipConditional()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "ch":I
    const/4 v1, 0x0

    .line 513
    .local v1, "nestingDepth":I
    :cond_0
    :goto_0
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    .line 517
    :cond_1
    if-ne v0, v2, :cond_3

    .line 519
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    .line 520
    if-ne v0, v2, :cond_3

    .line 522
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    .line 523
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3

    .line 525
    if-nez v1, :cond_2

    .line 529
    nop

    .line 558
    return-void

    .line 536
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 542
    :cond_3
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_4

    .line 544
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    .line 545
    const/16 v2, 0x21

    if-ne v0, v2, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    .line 548
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    .line 552
    add-int/lit8 v1, v1, 0x1

    .line 553
    goto :goto_0

    .line 542
    :cond_4
    goto :goto_0
.end method

.method public skipUntil(C)V
    .locals 2
    .param p1, "stopChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/wutka/dtd/Scanner;->read()I

    move-result v0

    move v1, v0

    .local v1, "ch":I
    if-ltz v0, :cond_1

    .line 199
    if-ne v1, p1, :cond_0

    .line 201
    return-void

    .line 204
    :cond_1
    return-void
.end method
