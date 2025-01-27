.class public final enum Lcom/danbamitale/epmslib/utils/ReceiptType;
.super Ljava/lang/Enum;
.source "ReceiptType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/danbamitale/epmslib/utils/ReceiptType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/ReceiptType;",
        "",
        "(Ljava/lang/String;I)V",
        "toString",
        "",
        "CUSTOMER_COPY",
        "MERCHANT_COPY",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/danbamitale/epmslib/utils/ReceiptType;

.field public static final enum CUSTOMER_COPY:Lcom/danbamitale/epmslib/utils/ReceiptType;

.field public static final enum MERCHANT_COPY:Lcom/danbamitale/epmslib/utils/ReceiptType;


# direct methods
.method private static final synthetic $values()[Lcom/danbamitale/epmslib/utils/ReceiptType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/danbamitale/epmslib/utils/ReceiptType;

    sget-object v1, Lcom/danbamitale/epmslib/utils/ReceiptType;->CUSTOMER_COPY:Lcom/danbamitale/epmslib/utils/ReceiptType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/ReceiptType;->MERCHANT_COPY:Lcom/danbamitale/epmslib/utils/ReceiptType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/danbamitale/epmslib/utils/ReceiptType;

    const-string v1, "CUSTOMER_COPY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/ReceiptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/ReceiptType;->CUSTOMER_COPY:Lcom/danbamitale/epmslib/utils/ReceiptType;

    new-instance v0, Lcom/danbamitale/epmslib/utils/ReceiptType;

    const-string v1, "MERCHANT_COPY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/danbamitale/epmslib/utils/ReceiptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/ReceiptType;->MERCHANT_COPY:Lcom/danbamitale/epmslib/utils/ReceiptType;

    invoke-static {}, Lcom/danbamitale/epmslib/utils/ReceiptType;->$values()[Lcom/danbamitale/epmslib/utils/ReceiptType;

    move-result-object v0

    sput-object v0, Lcom/danbamitale/epmslib/utils/ReceiptType;->$VALUES:[Lcom/danbamitale/epmslib/utils/ReceiptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/ReceiptType;
    .locals 1

    const-class v0, Lcom/danbamitale/epmslib/utils/ReceiptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/utils/ReceiptType;

    return-object v0
.end method

.method public static values()[Lcom/danbamitale/epmslib/utils/ReceiptType;
    .locals 1

    sget-object v0, Lcom/danbamitale/epmslib/utils/ReceiptType;->$VALUES:[Lcom/danbamitale/epmslib/utils/ReceiptType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/danbamitale/epmslib/utils/ReceiptType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 7
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/utils/ReceiptType;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
