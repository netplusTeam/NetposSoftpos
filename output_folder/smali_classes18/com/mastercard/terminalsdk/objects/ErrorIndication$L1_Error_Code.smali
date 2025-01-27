.class public final enum Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/objects/ErrorIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "L1_Error_Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

.field public static final enum PROTOCOL_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

.field public static final enum TIMEOUT_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

.field public static final enum TRANSMISSION_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

.field private static final synthetic a:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;


# instance fields
.field private b:B

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->OK:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    new-instance v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v3, "TIMEOUT_ERROR"

    const/4 v4, 0x1

    const-string v5, "TIME OUT ERROR"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TIMEOUT_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    new-instance v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v5, "TRANSMISSION_ERROR"

    const/4 v6, 0x2

    const-string v7, "TRANSMISSION ERROR"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v3, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TRANSMISSION_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    new-instance v5, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v7, "PROTOCOL_ERROR"

    const/4 v8, 0x3

    const-string v9, "PROTOCOL ERROR"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;-><init>(Ljava/lang/String;IBLjava/lang/String;)V

    sput-object v5, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->PROTOCOL_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->a:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IBLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->b:B

    iput-object p4, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;
    .locals 1

    const-class v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    return-object p0
.end method

.method public static values()[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;
    .locals 1

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->a:[Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    return-object v0
.end method


# virtual methods
.method public getL1Error_Code()B
    .locals 1

    iget-byte v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->b:B

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->c:Ljava/lang/String;

    return-object v0
.end method
