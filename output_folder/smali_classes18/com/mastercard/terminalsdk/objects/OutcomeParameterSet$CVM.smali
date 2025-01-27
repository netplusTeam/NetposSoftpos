.class public final enum Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CVM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONFIRMATION_CODE_VERIFIED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

.field public static final enum NO_CVM:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

.field public static final enum OBTAIN_SIGNATURE:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

.field public static final enum ONLINE_PIN:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

.field private static final synthetic e:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    const-string v1, "NO_CVM"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->NO_CVM:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    const-string v4, "OBTAIN_SIGNATURE"

    const/4 v5, 0x1

    const/16 v6, 0x10

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->OBTAIN_SIGNATURE:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    new-instance v4, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    const-string v6, "ONLINE_PIN"

    const/4 v7, 0x2

    const/16 v8, 0x20

    invoke-direct {v4, v6, v7, v8, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->ONLINE_PIN:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    const-string v8, "CONFIRMATION_CODE_VERIFIED"

    const/4 v9, 0x3

    const/16 v10, 0x30

    invoke-direct {v6, v8, v9, v10, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->CONFIRMATION_CODE_VERIFIED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    const-string v10, "NA"

    const/4 v11, 0x4

    const/16 v12, 0xf0

    invoke-direct {v8, v10, v11, v12, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    sput-object v3, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->e:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

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

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->d:I

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->c:Ljava/lang/String;

    return-void
.end method

.method public static cvmCodeOf(B)Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;
    .locals 5

    invoke-static {}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->values()[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->getCVM()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->e:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;

    return-object v0
.end method


# virtual methods
.method public getCVM()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$CVM;->d:I

    return v0
.end method
