.class public final enum Lcom/sleepycat/je/CacheMode;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/CacheMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/CacheMode;

.field public static final enum DEFAULT:Lcom/sleepycat/je/CacheMode;

.field public static final enum DYNAMIC:Lcom/sleepycat/je/CacheMode;

.field public static final enum EVICT_BIN:Lcom/sleepycat/je/CacheMode;

.field public static final enum EVICT_LN:Lcom/sleepycat/je/CacheMode;

.field public static final enum KEEP_HOT:Lcom/sleepycat/je/CacheMode;

.field public static final enum MAKE_COLD:Lcom/sleepycat/je/CacheMode;

.field public static final enum UNCHANGED:Lcom/sleepycat/je/CacheMode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 171
    new-instance v0, Lcom/sleepycat/je/CacheMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/CacheMode;->DEFAULT:Lcom/sleepycat/je/CacheMode;

    .line 177
    new-instance v1, Lcom/sleepycat/je/CacheMode;

    const-string v3, "KEEP_HOT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/CacheMode;->KEEP_HOT:Lcom/sleepycat/je/CacheMode;

    .line 245
    new-instance v3, Lcom/sleepycat/je/CacheMode;

    const-string v5, "UNCHANGED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    .line 251
    new-instance v5, Lcom/sleepycat/je/CacheMode;

    const-string v7, "MAKE_COLD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/CacheMode;->MAKE_COLD:Lcom/sleepycat/je/CacheMode;

    .line 282
    new-instance v7, Lcom/sleepycat/je/CacheMode;

    const-string v9, "EVICT_LN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;

    .line 349
    new-instance v9, Lcom/sleepycat/je/CacheMode;

    const-string v11, "EVICT_BIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/CacheMode;->EVICT_BIN:Lcom/sleepycat/je/CacheMode;

    .line 357
    new-instance v11, Lcom/sleepycat/je/CacheMode;

    const-string v13, "DYNAMIC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/CacheMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/CacheMode;->DYNAMIC:Lcom/sleepycat/je/CacheMode;

    .line 147
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sleepycat/je/CacheMode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/sleepycat/je/CacheMode;->$VALUES:[Lcom/sleepycat/je/CacheMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/CacheMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 147
    const-class v0, Lcom/sleepycat/je/CacheMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 147
    sget-object v0, Lcom/sleepycat/je/CacheMode;->$VALUES:[Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v0}, [Lcom/sleepycat/je/CacheMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method
