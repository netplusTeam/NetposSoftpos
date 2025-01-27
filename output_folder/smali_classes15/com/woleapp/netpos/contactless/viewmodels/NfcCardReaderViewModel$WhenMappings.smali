.class public final synthetic Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$WhenMappings;
.super Ljava/lang/Object;
.source "NfcCardReaderViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
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

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->values()[Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VISA:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->MASTERCARD:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->VERVE:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/visa/app/ttpkernel/TtpOutcome;->values()[Lcom/visa/app/ttpkernel/TtpOutcome;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/visa/app/ttpkernel/TtpOutcome;->COMPLETED:Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v1}, Lcom/visa/app/ttpkernel/TtpOutcome;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/visa/app/ttpkernel/TtpOutcome;->DECLINED:Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v1}, Lcom/visa/app/ttpkernel/TtpOutcome;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/visa/app/ttpkernel/TtpOutcome;->ABORTED:Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v1}, Lcom/visa/app/ttpkernel/TtpOutcome;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/visa/app/ttpkernel/TtpOutcome;->TRYNEXT:Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v1}, Lcom/visa/app/ttpkernel/TtpOutcome;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/visa/app/ttpkernel/TtpOutcome;->SELECTAGAIN:Lcom/visa/app/ttpkernel/TtpOutcome;

    invoke-virtual {v1}, Lcom/visa/app/ttpkernel/TtpOutcome;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
