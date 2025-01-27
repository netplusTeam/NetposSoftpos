.class public final enum Lcom/mastercard/terminalsdk/objects/ContentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOL:Lcom/mastercard/terminalsdk/objects/ContentType;

.field public static final enum DOLV:Lcom/mastercard/terminalsdk/objects/ContentType;

.field public static final enum T:Lcom/mastercard/terminalsdk/objects/ContentType;

.field public static final enum TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

.field public static final enum TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

.field private static final synthetic c:[Lcom/mastercard/terminalsdk/objects/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/mastercard/terminalsdk/objects/ContentType;

    const-string v1, "T"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mastercard/terminalsdk/objects/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->T:Lcom/mastercard/terminalsdk/objects/ContentType;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/ContentType;

    const-string v3, "DOL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mastercard/terminalsdk/objects/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/ContentType;->DOL:Lcom/mastercard/terminalsdk/objects/ContentType;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/ContentType;

    const-string v5, "DOLV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mastercard/terminalsdk/objects/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/ContentType;->DOLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/ContentType;

    const-string v7, "TLV"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mastercard/terminalsdk/objects/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/ContentType;->TLV:Lcom/mastercard/terminalsdk/objects/ContentType;

    new-instance v7, Lcom/mastercard/terminalsdk/objects/ContentType;

    const-string v9, "TDO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mastercard/terminalsdk/objects/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mastercard/terminalsdk/objects/ContentType;->TDO:Lcom/mastercard/terminalsdk/objects/ContentType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mastercard/terminalsdk/objects/ContentType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mastercard/terminalsdk/objects/ContentType;->c:[Lcom/mastercard/terminalsdk/objects/ContentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/ContentType;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/ContentType;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ContentType;->c:[Lcom/mastercard/terminalsdk/objects/ContentType;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/ContentType;

    return-object v0
.end method
