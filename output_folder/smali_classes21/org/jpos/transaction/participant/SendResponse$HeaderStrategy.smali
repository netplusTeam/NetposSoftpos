.class public abstract enum Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;
.super Ljava/lang/Enum;
.source "SendResponse.java"

# interfaces
.implements Lorg/jpos/transaction/participant/SendResponse$HeaderHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/participant/SendResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "HeaderStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;",
        ">;",
        "Lorg/jpos/transaction/participant/SendResponse$HeaderHandler;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

.field public static final enum PRESERVE_ORIGINAL:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

.field public static final enum PRESERVE_RESPONSE:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

.field public static final enum SET_TO_NULL:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 111
    new-instance v0, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$1;

    const-string v1, "PRESERVE_ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->PRESERVE_ORIGINAL:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    .line 117
    new-instance v1, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$2;

    const-string v3, "PRESERVE_RESPONSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->PRESERVE_RESPONSE:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    .line 121
    new-instance v3, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$3;

    const-string v5, "SET_TO_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->SET_TO_NULL:Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    .line 109
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->$VALUES:[Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jpos/transaction/participant/SendResponse$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/jpos/transaction/participant/SendResponse$1;

    .line 110
    invoke-direct {p0, p1, p2}, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    const-class v0, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    return-object v0
.end method

.method public static values()[Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;
    .locals 1

    .line 109
    sget-object v0, Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->$VALUES:[Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    invoke-virtual {v0}, [Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/transaction/participant/SendResponse$HeaderStrategy;

    return-object v0
.end method
