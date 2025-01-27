.class public final enum Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnlineResponseData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANY:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

.field public static final enum EMV_DATA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

.field private static final synthetic b:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    const-string v1, "EMV_DATA"

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->EMV_DATA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    const-string v3, "ANY"

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->ANY:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    const-string v6, "NA"

    const/4 v7, 0x2

    const/16 v8, 0xf0

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    sput-object v4, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->b:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

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

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->c:I

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->b:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;

    return-object v0
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineResponseData()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$OnlineResponseData;->c:I

    return v0
.end method
