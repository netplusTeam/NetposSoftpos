.class public final enum Lorg/apache/sshd/common/config/LogLevelValue;
.super Ljava/lang/Enum;
.source "LogLevelValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/config/LogLevelValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum DEBUG:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum DEBUG1:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum DEBUG2:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum DEBUG3:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum ERROR:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum FATAL:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum INFO:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final enum QUIET:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/config/LogLevelValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum VERBOSE:Lorg/apache/sshd/common/config/LogLevelValue;


# instance fields
.field private final level:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 39
    new-instance v0, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    const-string v2, "QUIET"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v0, Lorg/apache/sshd/common/config/LogLevelValue;->QUIET:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 40
    new-instance v1, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "FATAL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v1, Lorg/apache/sshd/common/config/LogLevelValue;->FATAL:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 41
    new-instance v2, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "ERROR"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v2, Lorg/apache/sshd/common/config/LogLevelValue;->ERROR:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 42
    new-instance v4, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "INFO"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v4, Lorg/apache/sshd/common/config/LogLevelValue;->INFO:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 43
    new-instance v6, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v10, "VERBOSE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v6, Lorg/apache/sshd/common/config/LogLevelValue;->VERBOSE:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 44
    new-instance v8, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v12, "DEBUG"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v8, Lorg/apache/sshd/common/config/LogLevelValue;->DEBUG:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 45
    new-instance v10, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v14, "DEBUG1"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v10, Lorg/apache/sshd/common/config/LogLevelValue;->DEBUG1:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 46
    new-instance v12, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v14, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v15, "DEBUG2"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v12, Lorg/apache/sshd/common/config/LogLevelValue;->DEBUG2:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 47
    new-instance v14, Lorg/apache/sshd/common/config/LogLevelValue;

    sget-object v15, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v13, "DEBUG3"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lorg/apache/sshd/common/config/LogLevelValue;-><init>(Ljava/lang/String;ILjava/util/logging/Level;)V

    sput-object v14, Lorg/apache/sshd/common/config/LogLevelValue;->DEBUG3:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 33
    const/16 v13, 0x9

    new-array v13, v13, [Lorg/apache/sshd/common/config/LogLevelValue;

    aput-object v0, v13, v3

    aput-object v1, v13, v5

    aput-object v2, v13, v7

    aput-object v4, v13, v9

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    aput-object v14, v13, v11

    sput-object v13, Lorg/apache/sshd/common/config/LogLevelValue;->$VALUES:[Lorg/apache/sshd/common/config/LogLevelValue;

    .line 49
    const-class v0, Lorg/apache/sshd/common/config/LogLevelValue;

    .line 50
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/LogLevelValue;->VALUES:Ljava/util/Set;

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/logging/Level;)V
    .locals 0
    .param p3, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lorg/apache/sshd/common/config/LogLevelValue;->level:Ljava/util/logging/Level;

    .line 56
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/LogLevelValue;
    .locals 4
    .param p0, "n"    # Ljava/lang/String;

    .line 63
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    return-object v1

    .line 67
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/LogLevelValue;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/LogLevelValue;

    .line 68
    .local v2, "l":Lorg/apache/sshd/common/config/LogLevelValue;
    invoke-virtual {v2}, Lorg/apache/sshd/common/config/LogLevelValue;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    return-object v2

    .line 71
    .end local v2    # "l":Lorg/apache/sshd/common/config/LogLevelValue;
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/config/LogLevelValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/apache/sshd/common/config/LogLevelValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/LogLevelValue;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/config/LogLevelValue;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/sshd/common/config/LogLevelValue;->$VALUES:[Lorg/apache/sshd/common/config/LogLevelValue;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/config/LogLevelValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/config/LogLevelValue;

    return-object v0
.end method


# virtual methods
.method public getLoggingLevel()Ljava/util/logging/Level;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/common/config/LogLevelValue;->level:Ljava/util/logging/Level;

    return-object v0
.end method
