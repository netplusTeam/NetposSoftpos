.class public final enum Lcom/alcineo/softpos/payment/model/beep/BeepStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/payment/model/beep/BeepStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

.field public static final enum ALERT_TONE:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

.field public static final enum APPROVED:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

.field public static final enum CARD_READ_OK:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

.field public static final enum DECLINED:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    const-string v1, "CARD_READ_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;->CARD_READ_OK:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    new-instance v1, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    const-string v3, "ALERT_TONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;->ALERT_TONE:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    new-instance v3, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    const-string v5, "APPROVED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;->APPROVED:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    new-instance v5, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    const-string v7, "DECLINED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;->DECLINED:Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;->$VALUES:[Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/payment/model/beep/BeepStatus;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/payment/model/beep/BeepStatus;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/payment/model/beep/BeepStatus;->$VALUES:[Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/payment/model/beep/BeepStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/payment/model/beep/BeepStatus;

    return-object v0
.end method
