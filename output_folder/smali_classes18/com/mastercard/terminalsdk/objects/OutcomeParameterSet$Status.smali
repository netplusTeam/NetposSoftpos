.class public final enum Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPROVED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field public static final enum DECLINED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field public static final enum END_APPLICATION:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field public static final enum ONLINE_REQUEST:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field public static final enum SELECT_NEXT:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field public static final enum TRY_AGAIN:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field public static final enum TRY_ANOTHER_INTERFACE:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

.field private static final synthetic c:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v1, "APPROVED"

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->APPROVED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v3, "DECLINED"

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->DECLINED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v6, "ONLINE_REQUEST"

    const/4 v7, 0x2

    const/16 v8, 0x30

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->ONLINE_REQUEST:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v8, "END_APPLICATION"

    const/4 v9, 0x3

    const/16 v10, 0x40

    invoke-direct {v6, v8, v9, v10, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->END_APPLICATION:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v10, "SELECT_NEXT"

    const/4 v11, 0x4

    const/16 v12, 0x50

    invoke-direct {v8, v10, v11, v12, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->SELECT_NEXT:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    new-instance v10, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v12, "TRY_ANOTHER_INTERFACE"

    const/4 v13, 0x5

    const/16 v14, 0x60

    invoke-direct {v10, v12, v13, v14, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->TRY_ANOTHER_INTERFACE:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    new-instance v12, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v14, "TRY_AGAIN"

    const/4 v15, 0x6

    const/16 v13, 0x70

    invoke-direct {v12, v14, v15, v13, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->TRY_AGAIN:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    new-instance v13, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const-string v14, "NA"

    const/4 v15, 0x7

    const/16 v11, 0xf0

    invoke-direct {v13, v14, v15, v11, v4}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    const/16 v4, 0x8

    new-array v4, v4, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    aput-object v0, v4, v2

    aput-object v1, v4, v5

    aput-object v3, v4, v7

    aput-object v6, v4, v9

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    aput-object v13, v4, v15

    sput-object v4, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->c:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

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

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->d:I

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->c:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->d:I

    return v0
.end method
