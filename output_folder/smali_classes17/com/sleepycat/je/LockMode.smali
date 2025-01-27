.class public final enum Lcom/sleepycat/je/LockMode;
.super Ljava/lang/Enum;
.source "LockMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/LockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/LockMode;

.field public static final enum DEFAULT:Lcom/sleepycat/je/LockMode;

.field public static final enum READ_COMMITTED:Lcom/sleepycat/je/LockMode;

.field public static final enum READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

.field public static final enum READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

.field public static final enum RMW:Lcom/sleepycat/je/LockMode;


# instance fields
.field private final readOptions:Lcom/sleepycat/je/ReadOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 245
    new-instance v0, Lcom/sleepycat/je/LockMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    .line 263
    new-instance v1, Lcom/sleepycat/je/LockMode;

    const-string v3, "READ_UNCOMMITTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED:Lcom/sleepycat/je/LockMode;

    .line 283
    new-instance v3, Lcom/sleepycat/je/LockMode;

    const-string v5, "READ_UNCOMMITTED_ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/LockMode;->READ_UNCOMMITTED_ALL:Lcom/sleepycat/je/LockMode;

    .line 301
    new-instance v5, Lcom/sleepycat/je/LockMode;

    const-string v7, "READ_COMMITTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/LockMode;->READ_COMMITTED:Lcom/sleepycat/je/LockMode;

    .line 319
    new-instance v7, Lcom/sleepycat/je/LockMode;

    const-string v9, "RMW"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/LockMode;->RMW:Lcom/sleepycat/je/LockMode;

    .line 223
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sleepycat/je/LockMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/sleepycat/je/LockMode;->$VALUES:[Lcom/sleepycat/je/LockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 324
    new-instance p1, Lcom/sleepycat/je/ReadOptions;

    invoke-direct {p1}, Lcom/sleepycat/je/ReadOptions;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sleepycat/je/ReadOptions;->setLockMode(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/ReadOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/LockMode;->readOptions:Lcom/sleepycat/je/ReadOptions;

    .line 325
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/LockMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 223
    const-class v0, Lcom/sleepycat/je/LockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/LockMode;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/LockMode;
    .locals 1

    .line 223
    sget-object v0, Lcom/sleepycat/je/LockMode;->$VALUES:[Lcom/sleepycat/je/LockMode;

    invoke-virtual {v0}, [Lcom/sleepycat/je/LockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/LockMode;

    return-object v0
.end method


# virtual methods
.method public toReadOptions()Lcom/sleepycat/je/ReadOptions;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/sleepycat/je/LockMode;->readOptions:Lcom/sleepycat/je/ReadOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockMode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/LockMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
