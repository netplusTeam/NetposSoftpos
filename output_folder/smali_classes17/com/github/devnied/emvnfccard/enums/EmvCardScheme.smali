.class public final enum Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
.super Ljava/lang/Enum;
.source "EmvCardScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum AMERICAN_EXPRESS:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum BANKAXEPT:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum BANRISUL:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum BRADESCO:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum CB:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum COGEBAN:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum DANKORT:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum DISCOVER:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum EAPS:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum ETRANZACT:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum GELDKARTE:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum GOOGLE:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum INTERAC:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum INTER_SWITCH:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum JCB:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum LINK:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum MASTER_CARD:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum MIDLAND:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum PBS:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum RUPAY:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum SPAN:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum TENN:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum UNIONPAY:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum VERVE:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum VISA:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum ZIP:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

.field public static final enum ПРО100:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;


# instance fields
.field private final aids:[Ljava/lang/String;

.field private final aidsByte:[[B

.field private final name:Ljava/lang/String;

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 32
    new-instance v6, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v0, "A0 00 00 00 03"

    const-string v1, "A0 00 00 00 03 10 10"

    const-string v2, "A0 00 00 00 98 08 48"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v1, "VISA"

    const/4 v2, 0x0

    const-string v3, "VISA"

    const-string v4, "^4[0-9]{6,}$"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->VISA:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 33
    new-instance v0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v1, "A0 00 00 00 04"

    const-string v2, "A0 00 00 00 05"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v8, "MASTER_CARD"

    const/4 v9, 0x1

    const-string v10, "Master card"

    const-string v11, "^5[1-5][0-9]{5,}$"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->MASTER_CARD:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 34
    new-instance v1, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v2, "A0 00 00 00 25"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v18

    const-string v14, "AMERICAN_EXPRESS"

    const/4 v15, 0x2

    const-string v16, "American express"

    const-string v17, "^3[47][0-9]{5,}$"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->AMERICAN_EXPRESS:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 35
    new-instance v2, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v3, "A0 00 00 00 42"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v12

    const-string v8, "CB"

    const/4 v9, 0x3

    const-string v10, "CB"

    const/4 v11, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v2, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->CB:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 36
    new-instance v3, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v4, "A0 00 00 00 29"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const-string v14, "LINK"

    const/4 v15, 0x4

    const-string v16, "LINK"

    const/16 v17, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v3, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->LINK:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 37
    new-instance v4, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v5, "A0 00 00 00 65"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v12

    const-string v8, "JCB"

    const/4 v9, 0x5

    const-string v10, "JCB"

    const-string v11, "^(?:2131|1800|35[0-9]{3})[0-9]{3,}$"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->JCB:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 38
    new-instance v5, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v7, "A0 00 00 01 21 10 10"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v18

    const-string v14, "DANKORT"

    const/4 v15, 0x6

    const-string v16, "Dankort"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v5, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->DANKORT:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 39
    new-instance v14, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v8, "A0 00 00 01 41 00 01"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    const-string v9, "COGEBAN"

    const/4 v10, 0x7

    const-string v11, "CoGeBan"

    const/4 v12, 0x0

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v14, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->COGEBAN:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 40
    new-instance v8, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v9, "A0 00 00 01 52 30 10"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v20

    const-string v16, "DISCOVER"

    const/16 v17, 0x8

    const-string v18, "Discover"

    const-string v19, "(6011|65|64[4-9]|622)[0-9]*"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v8, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->DISCOVER:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 41
    new-instance v9, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v10, "A0 00 00 01 54"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v26

    const-string v22, "BANRISUL"

    const/16 v23, 0x9

    const-string v24, "Banrisul"

    const/16 v25, 0x0

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v9, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->BANRISUL:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 42
    new-instance v10, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v11, "A0 00 00 02 28"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v20

    const-string v16, "SPAN"

    const/16 v17, 0xa

    const-string v18, "Saudi Payments Network"

    const/16 v19, 0x0

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v10, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->SPAN:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 43
    new-instance v11, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v12, "A0 00 00 02 77"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v26

    const-string v22, "INTERAC"

    const/16 v23, 0xb

    const-string v24, "Interac"

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v11, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->INTERAC:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 44
    new-instance v12, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v13, "A0 00 00 03 24"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v20

    const-string v16, "ZIP"

    const/16 v17, 0xc

    const-string v18, "Discover Card"

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v12, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->ZIP:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 45
    new-instance v13, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v15, "A0 00 00 03 33"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v26

    const-string v22, "UNIONPAY"

    const/16 v23, 0xd

    const-string v24, "UnionPay"

    const-string v25, "^62[0-9]{14,17}"

    move-object/from16 v21, v13

    invoke-direct/range {v21 .. v26}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v13, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->UNIONPAY:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 46
    new-instance v21, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v15, "A0 00 00 03 59"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v20

    const-string v16, "EAPS"

    const/16 v17, 0xe

    const-string v18, "Euro Alliance of Payment Schemes"

    move-object/from16 v15, v21

    invoke-direct/range {v15 .. v20}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v21, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->EAPS:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 47
    new-instance v15, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v16, "A0 00 00 03 71"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v27

    const-string v23, "VERVE"

    const/16 v24, 0xf

    const-string v25, "Verve"

    const/16 v26, 0x0

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v15, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->VERVE:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 48
    new-instance v16, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v17, "A0 00 00 04 39"

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v33

    const-string v29, "TENN"

    const/16 v30, 0x10

    const-string v31, "The Exchange Network ATM Network"

    const/16 v32, 0x0

    move-object/from16 v28, v16

    invoke-direct/range {v28 .. v33}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v16, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->TENN:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 49
    new-instance v17, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v18, "A0 00 00 05 24 10 10"

    filled-new-array/range {v18 .. v18}, [Ljava/lang/String;

    move-result-object v27

    const-string v23, "RUPAY"

    const/16 v24, 0x11

    const-string v25, "Rupay"

    move-object/from16 v22, v17

    invoke-direct/range {v22 .. v27}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v17, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->RUPAY:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 50
    new-instance v18, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v19, "A0 00 00 04 32 00 01"

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v33

    const-string v29, "\u041f\u0420\u041e100"

    const/16 v30, 0x12

    const-string v31, "\u041f\u0420\u041e100"

    move-object/from16 v28, v18

    invoke-direct/range {v28 .. v33}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v18, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->ПРО100:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 51
    new-instance v19, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-object/from16 v20, v15

    const-string v15, "D2 76 00 00 25 45 50 02 00"

    move-object/from16 v28, v13

    const-string v13, "D2 76 00 00 25 45 50 01 00"

    move-object/from16 v29, v12

    const-string v12, "D2 76 00 00 25"

    filled-new-array {v15, v13, v12}, [Ljava/lang/String;

    move-result-object v27

    const-string v23, "GELDKARTE"

    const/16 v24, 0x13

    const-string v25, "GeldKarte/ZKA"

    move-object/from16 v22, v19

    invoke-direct/range {v22 .. v27}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v19, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->GELDKARTE:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 52
    new-instance v12, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v13, "D5 78 00 00 02 10 10"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v35

    const-string v31, "BANKAXEPT"

    const/16 v32, 0x14

    const-string v33, "Bankaxept"

    const/16 v34, 0x0

    move-object/from16 v30, v12

    invoke-direct/range {v30 .. v35}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v12, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->BANKAXEPT:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 53
    new-instance v13, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v15, "F0 00 00 00 03 00 01"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v27

    const-string v23, "BRADESCO"

    const/16 v24, 0x15

    const-string v25, "BRADESCO"

    move-object/from16 v22, v13

    invoke-direct/range {v22 .. v27}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v13, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->BRADESCO:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 54
    new-instance v15, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v22, "A0 00 00 00 24 01"

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v35

    const-string v31, "MIDLAND"

    const/16 v32, 0x16

    const-string v33, "Midland"

    move-object/from16 v30, v15

    invoke-direct/range {v30 .. v35}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v15, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->MIDLAND:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 55
    new-instance v30, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v27

    const-string v23, "PBS"

    const/16 v24, 0x17

    const-string v25, "PBS"

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v27}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v30, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->PBS:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 56
    new-instance v7, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v22, "A0 00 00 04 54"

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v36

    const-string v32, "ETRANZACT"

    const/16 v33, 0x18

    const-string v34, "eTranzact"

    const/16 v35, 0x0

    move-object/from16 v31, v7

    invoke-direct/range {v31 .. v36}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->ETRANZACT:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 57
    new-instance v31, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v22, "A0 00 00 04 76 6C"

    filled-new-array/range {v22 .. v22}, [Ljava/lang/String;

    move-result-object v27

    const-string v23, "GOOGLE"

    const/16 v24, 0x19

    const-string v25, "Google"

    move-object/from16 v22, v31

    invoke-direct/range {v22 .. v27}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v31, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->GOOGLE:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 58
    new-instance v22, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const-string v23, "A0 00 00 03 71 00 01"

    filled-new-array/range {v23 .. v23}, [Ljava/lang/String;

    move-result-object v37

    const-string v33, "INTER_SWITCH"

    const/16 v34, 0x1a

    const-string v35, "InterSwitch"

    const/16 v36, 0x0

    move-object/from16 v32, v22

    invoke-direct/range {v32 .. v37}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v22, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->INTER_SWITCH:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    .line 30
    move-object/from16 v23, v7

    const/16 v7, 0x1b

    new-array v7, v7, [Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    const/16 v24, 0x0

    aput-object v6, v7, v24

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v14, v7, v0

    const/16 v0, 0x8

    aput-object v8, v7, v0

    const/16 v0, 0x9

    aput-object v9, v7, v0

    const/16 v0, 0xa

    aput-object v10, v7, v0

    const/16 v0, 0xb

    aput-object v11, v7, v0

    const/16 v0, 0xc

    aput-object v29, v7, v0

    const/16 v0, 0xd

    aput-object v28, v7, v0

    const/16 v0, 0xe

    aput-object v21, v7, v0

    const/16 v0, 0xf

    aput-object v20, v7, v0

    const/16 v0, 0x10

    aput-object v16, v7, v0

    const/16 v0, 0x11

    aput-object v17, v7, v0

    const/16 v0, 0x12

    aput-object v18, v7, v0

    const/16 v0, 0x13

    aput-object v19, v7, v0

    const/16 v0, 0x14

    aput-object v12, v7, v0

    const/16 v0, 0x15

    aput-object v13, v7, v0

    const/16 v0, 0x16

    aput-object v15, v7, v0

    const/16 v0, 0x17

    aput-object v30, v7, v0

    const/16 v0, 0x18

    aput-object v23, v7, v0

    const/16 v0, 0x19

    aput-object v31, v7, v0

    const/16 v0, 0x1a

    aput-object v22, v7, v0

    sput-object v7, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p3, "pScheme"    # Ljava/lang/String;
    .param p4, "pRegex"    # Ljava/lang/String;
    .param p5, "pAids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p5, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->aids:[Ljava/lang/String;

    .line 92
    array-length p1, p5

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->aidsByte:[[B

    .line 93
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    iget-object p2, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->aids:[Ljava/lang/String;

    array-length p2, p2

    if-ge p1, p2, :cond_0

    .line 94
    iget-object p2, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->aidsByte:[[B

    aget-object v0, p5, p1

    invoke-static {v0}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p2, p1

    .line 93
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    .end local p1    # "i":I
    :cond_0
    iput-object p3, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->name:Ljava/lang/String;

    .line 97
    invoke-static {p4}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->pattern:Ljava/util/regex/Pattern;

    goto :goto_1

    .line 100
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->pattern:Ljava/util/regex/Pattern;

    .line 102
    :goto_1
    return-void
.end method

.method public static getCardTypeByAid(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    .locals 12
    .param p0, "pAid"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "ret":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    if-eqz p0, :cond_2

    .line 132
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "aid":Ljava/lang/String;
    invoke-static {}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->values()[Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 134
    .local v6, "val":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    invoke-virtual {v6}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getAid()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 135
    .local v10, "schemeAid":Ljava/lang/String;
    invoke-static {v10}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 136
    move-object v0, v6

    .line 137
    goto :goto_2

    .line 134
    .end local v10    # "schemeAid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 133
    .end local v6    # "val":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "aid":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static getCardTypeByCardNumber(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    .locals 7
    .param p0, "pCardNumber"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "ret":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    if-eqz p0, :cond_1

    .line 155
    invoke-static {}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->values()[Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 156
    .local v4, "val":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    iget-object v5, v4, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->pattern:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    move-object v0, v4

    .line 158
    goto :goto_1

    .line 155
    .end local v4    # "val":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    .locals 1

    .line 30
    sget-object v0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->$VALUES:[Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    return-object v0
.end method


# virtual methods
.method public getAid()[Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->aids:[Ljava/lang/String;

    return-object v0
.end method

.method public getAidByte()[[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->aidsByte:[[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->name:Ljava/lang/String;

    return-object v0
.end method
