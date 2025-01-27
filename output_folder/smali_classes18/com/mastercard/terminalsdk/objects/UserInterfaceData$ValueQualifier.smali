.class public final enum Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/UserInterfaceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueQualifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AMOUNT:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

.field public static final enum BALANCE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

.field public static final enum NONE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

.field private static final synthetic a:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->NONE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    const-string v3, "AMOUNT"

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->AMOUNT:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    const-string v5, "BALANCE"

    const/4 v6, 0x2

    const/16 v7, 0x20

    invoke-direct {v3, v5, v6, v7}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->BALANCE:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->a:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

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

    iput p3, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->a:[Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;

    return-object v0
.end method


# virtual methods
.method public getValueQualifier()I
    .locals 1

    iget v0, p0, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$ValueQualifier;->b:I

    return v0
.end method
