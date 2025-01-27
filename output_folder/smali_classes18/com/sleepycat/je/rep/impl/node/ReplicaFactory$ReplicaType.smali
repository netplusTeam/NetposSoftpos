.class public final enum Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;
.super Ljava/lang/Enum;
.source "ReplicaFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReplicaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

.field public static final enum DEFAULT:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

.field public static final enum NULL_REPLICA:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;->DEFAULT:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    .line 30
    new-instance v1, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    const-string v3, "NULL_REPLICA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;->NULL_REPLICA:Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    .line 28
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;->$VALUES:[Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;
    .locals 1

    .line 28
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;->$VALUES:[Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$ReplicaType;

    return-object v0
.end method
