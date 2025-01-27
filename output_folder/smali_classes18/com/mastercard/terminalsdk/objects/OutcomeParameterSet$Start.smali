.class public final enum Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Start"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

.field public static final enum B:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

.field public static final enum C:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

.field public static final enum D:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

.field public static final enum NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

.field private static final synthetic d:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    const-string v1, "A"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->A:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    const-string v4, "B"

    const/4 v5, 0x1

    const/16 v6, 0x10

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->B:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    new-instance v4, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    const-string v6, "C"

    const/4 v7, 0x2

    const/16 v8, 0x20

    invoke-direct {v4, v6, v7, v8, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->C:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    new-instance v6, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    const-string v8, "D"

    const/4 v9, 0x3

    const/16 v10, 0x30

    invoke-direct {v6, v8, v9, v10, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->D:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    new-instance v8, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    const-string v10, "NA"

    const/4 v11, 0x4

    const/16 v12, 0xf0

    invoke-direct {v8, v10, v11, v12, v3}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->NA:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    sput-object v3, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->d:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

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

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->c:I

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->d:[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;

    return-object v0
.end method


# virtual methods
.method public getEntryPoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Start;->c:I

    return v0
.end method
