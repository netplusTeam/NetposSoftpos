.class public final enum Lcom/danbamitale/epmslib/utils/TransactionRoute;
.super Ljava/lang/Enum;
.source "TransactionRoute.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/danbamitale/epmslib/utils/TransactionRoute;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/TransactionRoute;",
        "",
        "routeName",
        "",
        "routeCode",
        "",
        "(Ljava/lang/String;ILjava/lang/String;I)V",
        "getRouteCode",
        "()I",
        "getRouteName",
        "()Ljava/lang/String;",
        "NIBSS",
        "INTERSWITCH",
        "ALL",
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
.field private static final synthetic $VALUES:[Lcom/danbamitale/epmslib/utils/TransactionRoute;

.field public static final enum ALL:Lcom/danbamitale/epmslib/utils/TransactionRoute;

.field public static final enum INTERSWITCH:Lcom/danbamitale/epmslib/utils/TransactionRoute;

.field public static final enum NIBSS:Lcom/danbamitale/epmslib/utils/TransactionRoute;


# instance fields
.field private final routeCode:I

.field private final routeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/danbamitale/epmslib/utils/TransactionRoute;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/danbamitale/epmslib/utils/TransactionRoute;

    sget-object v1, Lcom/danbamitale/epmslib/utils/TransactionRoute;->NIBSS:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/TransactionRoute;->INTERSWITCH:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/danbamitale/epmslib/utils/TransactionRoute;->ALL:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;

    const-string v1, "NIBSS"

    const/4 v2, 0x0

    const-string v3, "nibss"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/danbamitale/epmslib/utils/TransactionRoute;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->NIBSS:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    .line 5
    new-instance v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;

    const-string v1, "INTERSWITCH"

    const-string v2, "interswitch"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/danbamitale/epmslib/utils/TransactionRoute;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->INTERSWITCH:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    .line 6
    new-instance v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;

    const-string v1, "ALL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v1, v2}, Lcom/danbamitale/epmslib/utils/TransactionRoute;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->ALL:Lcom/danbamitale/epmslib/utils/TransactionRoute;

    invoke-static {}, Lcom/danbamitale/epmslib/utils/TransactionRoute;->$values()[Lcom/danbamitale/epmslib/utils/TransactionRoute;

    move-result-object v0

    sput-object v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->$VALUES:[Lcom/danbamitale/epmslib/utils/TransactionRoute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "routeName"    # Ljava/lang/String;
    .param p4, "routeCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->routeName:Ljava/lang/String;

    iput p4, p0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->routeCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/danbamitale/epmslib/utils/TransactionRoute;
    .locals 1

    const-class v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;

    return-object v0
.end method

.method public static values()[Lcom/danbamitale/epmslib/utils/TransactionRoute;
    .locals 1

    sget-object v0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->$VALUES:[Lcom/danbamitale/epmslib/utils/TransactionRoute;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/danbamitale/epmslib/utils/TransactionRoute;

    return-object v0
.end method


# virtual methods
.method public final getRouteCode()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->routeCode:I

    return v0
.end method

.method public final getRouteName()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/danbamitale/epmslib/utils/TransactionRoute;->routeName:Ljava/lang/String;

    return-object v0
.end method
