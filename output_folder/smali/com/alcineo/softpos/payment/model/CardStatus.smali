.class public final enum Lcom/alcineo/softpos/payment/model/CardStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/payment/model/CardStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alcineo/softpos/payment/model/CardStatus;

.field public static final enum ABSENT_OFF_FIELD:Lcom/alcineo/softpos/payment/model/CardStatus;

.field public static final enum PRESENT_ON_FIELD:Lcom/alcineo/softpos/payment/model/CardStatus;


# instance fields
.field private final val:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alcineo/softpos/payment/model/CardStatus;

    const-string v1, "PRESENT_ON_FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alcineo/softpos/payment/model/CardStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alcineo/softpos/payment/model/CardStatus;->PRESENT_ON_FIELD:Lcom/alcineo/softpos/payment/model/CardStatus;

    new-instance v1, Lcom/alcineo/softpos/payment/model/CardStatus;

    const-string v3, "ABSENT_OFF_FIELD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alcineo/softpos/payment/model/CardStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alcineo/softpos/payment/model/CardStatus;->ABSENT_OFF_FIELD:Lcom/alcineo/softpos/payment/model/CardStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alcineo/softpos/payment/model/CardStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alcineo/softpos/payment/model/CardStatus;->$VALUES:[Lcom/alcineo/softpos/payment/model/CardStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alcineo/softpos/payment/model/CardStatus;->val:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/payment/model/CardStatus;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/payment/model/CardStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/payment/model/CardStatus;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/payment/model/CardStatus;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/payment/model/CardStatus;->$VALUES:[Lcom/alcineo/softpos/payment/model/CardStatus;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/payment/model/CardStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/payment/model/CardStatus;

    return-object v0
.end method


# virtual methods
.method public getVal()I
    .locals 1

    iget v0, p0, Lcom/alcineo/softpos/payment/model/CardStatus;->val:I

    return v0
.end method
