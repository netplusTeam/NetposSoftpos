.class public final enum Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/UserInterfaceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIRDMessageID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPROVED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum APPROVED_PLEASE_SIGN:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum AUTHORISING:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum CARD_READ_OK_REMOVED_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum CLEAR_DISPLAY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum DECLINED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum ENTER_PIN:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum ERROR_OTHER_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum IPS_PIN_BYPASS:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum IPS_PIN_ENTRY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum IPS_SELECTING_APP:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum IPS_SELECT_APP:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum IPS_SPECIFIC_END:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum IPS_SPECIFIC_START:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum NOT_ACCEPTED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum NOT_AUTHORISED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum PLEASE_INSERT_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum PLEASE_INSERT_OR_SWIPE_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum PRESENT_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum PRESENT_ONLY_ONE_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum PROCESSING:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum PROCESSING_ERROR:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum REMOVE_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum SEE_PHONE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum TRY_AGAIN:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field public static final enum WELCOME:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

.field private static final synthetic a:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;


# instance fields
.field private b:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v1, "APPROVED"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "Approved"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->APPROVED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v4, "NOT_AUTHORISED"

    const/4 v5, 0x1

    const/4 v6, 0x7

    const-string v7, "Not Authorised"

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->NOT_AUTHORISED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v4, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v7, "DECLINED"

    const/4 v8, 0x2

    const-string v9, "Declined"

    invoke-direct {v4, v7, v8, v6, v9}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->DECLINED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v9, "ENTER_PIN"

    const/16 v10, 0x9

    const-string v11, "Please enter your PIN"

    invoke-direct {v7, v9, v3, v10, v11}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->ENTER_PIN:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v9, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v11, "NOT_ACCEPTED"

    const/4 v12, 0x4

    const/16 v13, 0xc

    const-string v14, "Not accepted"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->NOT_ACCEPTED:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v11, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v14, "PROCESSING_ERROR"

    const/4 v15, 0x5

    const/16 v12, 0xf

    const-string v3, "Processing error"

    invoke-direct {v11, v14, v15, v12, v3}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->PROCESSING_ERROR:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v14, "REMOVE_CARD"

    const/4 v15, 0x6

    const/16 v8, 0x10

    const-string v5, "Please Remove card"

    invoke-direct {v3, v14, v15, v8, v5}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->REMOVE_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v14, "WELCOME"

    const/16 v15, 0x14

    const-string v2, "Welcome"

    invoke-direct {v5, v14, v6, v15, v2}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->WELCOME:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v2, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v14, "PRESENT_CARD"

    const/16 v6, 0x8

    const/16 v15, 0x15

    const-string v8, "Present card"

    invoke-direct {v2, v14, v6, v15, v8}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->PRESENT_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v14, "PROCESSING"

    const/16 v6, 0x16

    const-string v15, "Processing"

    invoke-direct {v8, v14, v10, v6, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->PROCESSING:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v14, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v15, "CARD_READ_OK_REMOVED_CARD"

    const/16 v10, 0xa

    const/16 v6, 0x17

    const-string v12, "Card read OK Please remove card"

    invoke-direct {v14, v15, v10, v6, v12}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->CARD_READ_OK_REMOVED_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v12, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v15, "PLEASE_INSERT_OR_SWIPE_CARD"

    const/16 v10, 0xb

    const/16 v6, 0x18

    const-string v13, "Please insert or swipe card"

    invoke-direct {v12, v15, v10, v6, v13}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->PLEASE_INSERT_OR_SWIPE_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v13, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v15, "PRESENT_ONLY_ONE_CARD"

    const/16 v10, 0x19

    const-string v6, "Please present one card only"

    move-object/from16 v16, v12

    const/16 v12, 0xc

    invoke-direct {v13, v15, v12, v10, v6}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->PRESENT_ONLY_ONE_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "APPROVED_PLEASE_SIGN"

    const/16 v15, 0xd

    const/16 v10, 0x1a

    move-object/from16 v17, v13

    const-string v13, "Approved Please sign"

    invoke-direct {v6, v12, v15, v10, v13}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->APPROVED_PLEASE_SIGN:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v12, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v13, "AUTHORISING"

    const/16 v15, 0xe

    const/16 v10, 0x1b

    move-object/from16 v18, v6

    const-string v6, "Authorising Please Wait"

    invoke-direct {v12, v13, v15, v10, v6}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->AUTHORISING:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v10, "ERROR_OTHER_CARD"

    const/16 v13, 0x1c

    const-string v15, "ERROR - OTHER CARD"

    move-object/from16 v19, v12

    const/16 v12, 0xf

    invoke-direct {v6, v10, v12, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->ERROR_OTHER_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "PLEASE_INSERT_CARD"

    const/16 v13, 0x1d

    const-string v15, "Please insert card"

    move-object/from16 v20, v6

    const/16 v6, 0x10

    invoke-direct {v10, v12, v6, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->PLEASE_INSERT_CARD:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "CLEAR_DISPLAY"

    const/16 v13, 0x11

    const/16 v15, 0x1e

    move-object/from16 v21, v10

    const-string v10, "CLEAR DISPLAY"

    invoke-direct {v6, v12, v13, v15, v10}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->CLEAR_DISPLAY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "SEE_PHONE"

    const/16 v13, 0x12

    const/16 v15, 0x20

    move-object/from16 v22, v6

    const-string v6, "See Phone"

    invoke-direct {v10, v12, v13, v15, v6}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->SEE_PHONE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "TRY_AGAIN"

    const/16 v13, 0x13

    const/16 v15, 0x21

    move-object/from16 v23, v10

    const-string v10, "TRY AGAIN"

    invoke-direct {v6, v12, v13, v15, v10}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->TRY_AGAIN:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "NA"

    const/16 v13, 0xff

    const-string v15, "NA"

    move-object/from16 v24, v6

    const/16 v6, 0x14

    invoke-direct {v10, v12, v6, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->NA:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "IPS_SPECIFIC_START"

    const/16 v13, 0x40

    const-string v15, "Specific Start"

    move-object/from16 v25, v10

    const/16 v10, 0x15

    invoke-direct {v6, v12, v10, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->IPS_SPECIFIC_START:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "IPS_SELECT_APP"

    const-string v15, "Select Application"

    move-object/from16 v26, v6

    const/16 v6, 0x16

    invoke-direct {v10, v12, v6, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->IPS_SELECT_APP:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "IPS_SELECTING_APP"

    const/16 v13, 0x41

    const-string v15, "Selecting  Application"

    move-object/from16 v27, v10

    const/16 v10, 0x17

    invoke-direct {v6, v12, v10, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->IPS_SELECTING_APP:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "IPS_PIN_ENTRY"

    const/16 v13, 0x42

    const-string v15, "PIN Entry"

    move-object/from16 v28, v6

    const/16 v6, 0x18

    invoke-direct {v10, v12, v6, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->IPS_PIN_ENTRY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "IPS_PIN_BYPASS"

    const/16 v13, 0x43

    const-string v15, "PIN Bypass"

    move-object/from16 v29, v10

    const/16 v10, 0x19

    invoke-direct {v6, v12, v10, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->IPS_PIN_BYPASS:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const-string v12, "IPS_SPECIFIC_END"

    const/16 v13, 0x7f

    const-string v15, "Specific End"

    move-object/from16 v30, v6

    const/16 v6, 0x1a

    invoke-direct {v10, v12, v6, v13, v15}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->IPS_SPECIFIC_END:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const/16 v6, 0x1b

    new-array v6, v6, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    const/4 v12, 0x0

    aput-object v0, v6, v12

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v9, v6, v0

    const/4 v0, 0x5

    aput-object v11, v6, v0

    const/4 v0, 0x6

    aput-object v3, v6, v0

    const/4 v0, 0x7

    aput-object v5, v6, v0

    const/16 v0, 0x8

    aput-object v2, v6, v0

    const/16 v0, 0x9

    aput-object v8, v6, v0

    const/16 v0, 0xa

    aput-object v14, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    const/16 v0, 0x10

    aput-object v21, v6, v0

    const/16 v0, 0x11

    aput-object v22, v6, v0

    const/16 v0, 0x12

    aput-object v23, v6, v0

    const/16 v0, 0x13

    aput-object v24, v6, v0

    const/16 v0, 0x14

    aput-object v25, v6, v0

    const/16 v0, 0x15

    aput-object v26, v6, v0

    const/16 v0, 0x16

    aput-object v27, v6, v0

    const/16 v0, 0x17

    aput-object v28, v6, v0

    const/16 v0, 0x18

    aput-object v29, v6, v0

    const/16 v0, 0x19

    aput-object v30, v6, v0

    const/16 v0, 0x1a

    aput-object v10, v6, v0

    sput-object v6, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->a:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->b:I

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->a:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;

    return-object v0
.end method


# virtual methods
.method public getUIRDMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUIRDMessageID()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDMessageID;->b:I

    return v0
.end method
