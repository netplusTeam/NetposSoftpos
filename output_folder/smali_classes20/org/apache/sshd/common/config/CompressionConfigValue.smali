.class public final enum Lorg/apache/sshd/common/config/CompressionConfigValue;
.super Ljava/lang/Enum;
.source "CompressionConfigValue.java"

# interfaces
.implements Lorg/apache/sshd/common/compression/CompressionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/config/CompressionConfigValue;",
        ">;",
        "Lorg/apache/sshd/common/compression/CompressionFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/config/CompressionConfigValue;

.field public static final enum DELAYED:Lorg/apache/sshd/common/config/CompressionConfigValue;

.field public static final enum NO:Lorg/apache/sshd/common/config/CompressionConfigValue;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/config/CompressionConfigValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum YES:Lorg/apache/sshd/common/config/CompressionConfigValue;


# instance fields
.field private final factory:Lorg/apache/sshd/common/compression/CompressionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 38
    new-instance v0, Lorg/apache/sshd/common/config/CompressionConfigValue;

    sget-object v1, Lorg/apache/sshd/common/compression/BuiltinCompressions;->zlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    const-string v2, "YES"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/sshd/common/config/CompressionConfigValue;-><init>(Ljava/lang/String;ILorg/apache/sshd/common/compression/CompressionFactory;)V

    sput-object v0, Lorg/apache/sshd/common/config/CompressionConfigValue;->YES:Lorg/apache/sshd/common/config/CompressionConfigValue;

    .line 39
    new-instance v1, Lorg/apache/sshd/common/config/CompressionConfigValue;

    sget-object v2, Lorg/apache/sshd/common/compression/BuiltinCompressions;->none:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    const-string v4, "NO"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/sshd/common/config/CompressionConfigValue;-><init>(Ljava/lang/String;ILorg/apache/sshd/common/compression/CompressionFactory;)V

    sput-object v1, Lorg/apache/sshd/common/config/CompressionConfigValue;->NO:Lorg/apache/sshd/common/config/CompressionConfigValue;

    .line 40
    new-instance v2, Lorg/apache/sshd/common/config/CompressionConfigValue;

    sget-object v4, Lorg/apache/sshd/common/compression/BuiltinCompressions;->delayedZlib:Lorg/apache/sshd/common/compression/BuiltinCompressions;

    const-string v6, "DELAYED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/apache/sshd/common/config/CompressionConfigValue;-><init>(Ljava/lang/String;ILorg/apache/sshd/common/compression/CompressionFactory;)V

    sput-object v2, Lorg/apache/sshd/common/config/CompressionConfigValue;->DELAYED:Lorg/apache/sshd/common/config/CompressionConfigValue;

    .line 37
    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/sshd/common/config/CompressionConfigValue;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lorg/apache/sshd/common/config/CompressionConfigValue;->$VALUES:[Lorg/apache/sshd/common/config/CompressionConfigValue;

    .line 42
    const-class v0, Lorg/apache/sshd/common/config/CompressionConfigValue;

    .line 43
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/CompressionConfigValue;->VALUES:Ljava/util/Set;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/sshd/common/compression/CompressionFactory;)V
    .locals 0
    .param p3, "delegate"    # Lorg/apache/sshd/common/compression/CompressionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/compression/CompressionFactory;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lorg/apache/sshd/common/config/CompressionConfigValue;->factory:Lorg/apache/sshd/common/compression/CompressionFactory;

    .line 49
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/CompressionConfigValue;
    .locals 4
    .param p0, "n"    # Ljava/lang/String;

    .line 82
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    return-object v1

    .line 86
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/CompressionConfigValue;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/CompressionConfigValue;

    .line 87
    .local v2, "v":Lorg/apache/sshd/common/config/CompressionConfigValue;
    invoke-virtual {v2}, Lorg/apache/sshd/common/config/CompressionConfigValue;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    return-object v2

    .line 90
    .end local v2    # "v":Lorg/apache/sshd/common/config/CompressionConfigValue;
    :cond_1
    goto :goto_0

    .line 92
    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/config/CompressionConfigValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lorg/apache/sshd/common/config/CompressionConfigValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/CompressionConfigValue;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/config/CompressionConfigValue;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/sshd/common/config/CompressionConfigValue;->$VALUES:[Lorg/apache/sshd/common/config/CompressionConfigValue;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/config/CompressionConfigValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/config/CompressionConfigValue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/CompressionConfigValue;->create()Lorg/apache/sshd/common/compression/Compression;

    move-result-object v0

    return-object v0
.end method

.method public final create()Lorg/apache/sshd/common/compression/Compression;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/common/config/CompressionConfigValue;->factory:Lorg/apache/sshd/common/compression/CompressionFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/compression/CompressionFactory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/compression/Compression;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/common/config/CompressionConfigValue;->factory:Lorg/apache/sshd/common/compression/CompressionFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/compression/CompressionFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompressionExecuted()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/sshd/common/config/CompressionConfigValue;->factory:Lorg/apache/sshd/common/compression/CompressionFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/compression/CompressionFactory;->isCompressionExecuted()Z

    move-result v0

    return v0
.end method

.method public isDelayed()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/sshd/common/config/CompressionConfigValue;->factory:Lorg/apache/sshd/common/compression/CompressionFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/compression/CompressionFactory;->isDelayed()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/config/CompressionConfigValue;->factory:Lorg/apache/sshd/common/compression/CompressionFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/compression/CompressionFactory;->isSupported()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/CompressionConfigValue;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
