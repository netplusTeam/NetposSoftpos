.class public final enum Lcom/sleepycat/je/txn/LockGrantType;
.super Ljava/lang/Enum;
.source "LockGrantType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/txn/LockGrantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum DENIED:Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum NEW:Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum NONE_NEEDED:Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

.field public static final enum WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 25
    new-instance v0, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    .line 31
    new-instance v1, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v3, "WAIT_NEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

    .line 37
    new-instance v3, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v5, "PROMOTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/txn/LockGrantType;->PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    .line 43
    new-instance v5, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v7, "WAIT_PROMOTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    .line 49
    new-instance v7, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v9, "EXISTING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/txn/LockGrantType;->EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

    .line 55
    new-instance v9, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v11, "DENIED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    .line 61
    new-instance v11, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v13, "WAIT_RESTART"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    .line 66
    new-instance v13, Lcom/sleepycat/je/txn/LockGrantType;

    const-string v15, "NONE_NEEDED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sleepycat/je/txn/LockGrantType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sleepycat/je/txn/LockGrantType;->NONE_NEEDED:Lcom/sleepycat/je/txn/LockGrantType;

    .line 19
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sleepycat/je/txn/LockGrantType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/sleepycat/je/txn/LockGrantType;->$VALUES:[Lcom/sleepycat/je/txn/LockGrantType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/txn/LockGrantType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sleepycat/je/txn/LockGrantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/txn/LockGrantType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/txn/LockGrantType;
    .locals 1

    .line 19
    sget-object v0, Lcom/sleepycat/je/txn/LockGrantType;->$VALUES:[Lcom/sleepycat/je/txn/LockGrantType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/txn/LockGrantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/txn/LockGrantType;

    return-object v0
.end method
