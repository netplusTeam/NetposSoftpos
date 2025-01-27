.class public final enum Lcom/sleepycat/je/Durability$SyncPolicy;
.super Ljava/lang/Enum;
.source "Durability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/Durability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/Durability$SyncPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/Durability$SyncPolicy;

.field public static final enum NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

.field public static final enum SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

.field public static final enum WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 104
    new-instance v0, Lcom/sleepycat/je/Durability$SyncPolicy;

    const-string v1, "SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/Durability$SyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 125
    new-instance v1, Lcom/sleepycat/je/Durability$SyncPolicy;

    const-string v3, "NO_SYNC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/Durability$SyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 140
    new-instance v3, Lcom/sleepycat/je/Durability$SyncPolicy;

    const-string v5, "WRITE_NO_SYNC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/Durability$SyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 92
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sleepycat/je/Durability$SyncPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sleepycat/je/Durability$SyncPolicy;->$VALUES:[Lcom/sleepycat/je/Durability$SyncPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    const-class v0, Lcom/sleepycat/je/Durability$SyncPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/Durability$SyncPolicy;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1

    .line 92
    sget-object v0, Lcom/sleepycat/je/Durability$SyncPolicy;->$VALUES:[Lcom/sleepycat/je/Durability$SyncPolicy;

    invoke-virtual {v0}, [Lcom/sleepycat/je/Durability$SyncPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/Durability$SyncPolicy;

    return-object v0
.end method
