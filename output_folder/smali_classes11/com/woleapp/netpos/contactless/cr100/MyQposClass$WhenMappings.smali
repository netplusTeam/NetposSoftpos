.class public final synthetic Lcom/woleapp/netpos/contactless/cr100/MyQposClass$WhenMappings;
.super Ljava/lang/Object;
.source "MyQposClass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/cr100/MyQposClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/dspread/xpos/QPOSService$TransactionResult;->values()[Lcom/dspread/xpos/QPOSService$TransactionResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->APPROVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->DECLINED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CANCEL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CAPK_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->NOT_ICC:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->SELECT_APP_FAIL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->DEVICE_ERROR:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRADE_LOG_FULL:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_NOT_SUPPORTED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->MISSING_MANDATORY_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_BLOCKED_OR_NO_EMV_APPS:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->INVALID_ICC_DATA:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->FALLBACK:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->NFC_TERMINATED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_REMOVED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CONTACTLESS_TRANSACTION_NOT_ALLOW:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->CARD_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->TRANS_TOKEN_INVALID:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v1, Lcom/dspread/xpos/QPOSService$TransactionResult;->APP_BLOCKED:Lcom/dspread/xpos/QPOSService$TransactionResult;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService$TransactionResult;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sput-object v0, Lcom/woleapp/netpos/contactless/cr100/MyQposClass$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
