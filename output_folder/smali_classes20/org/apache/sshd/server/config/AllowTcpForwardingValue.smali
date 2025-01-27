.class public abstract enum Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
.super Ljava/lang/Enum;
.source "AllowTcpForwardingValue.java"

# interfaces
.implements Lorg/apache/sshd/server/forward/TcpForwardingFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/server/config/AllowTcpForwardingValue;",
        ">;",
        "Lorg/apache/sshd/server/forward/TcpForwardingFilter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

.field public static final enum ALL:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

.field public static final enum LOCAL:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

.field public static final enum NONE:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

.field public static final enum REMOTE:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/server/config/AllowTcpForwardingValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$1;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->ALL:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    .line 47
    new-instance v1, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$2;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->NONE:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    .line 58
    new-instance v3, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$3;

    const-string v5, "LOCAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->LOCAL:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    .line 69
    new-instance v5, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$4;

    const-string v7, "REMOTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->REMOTE:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    .line 35
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->$VALUES:[Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    .line 81
    const-class v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    .line 82
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->VALUES:Ljava/util/Set;

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/sshd/server/config/AllowTcpForwardingValue$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/sshd/server/config/AllowTcpForwardingValue$1;

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 86
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    return-object v1

    .line 90
    :cond_0
    const-string/jumbo v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->ALL:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    return-object v0

    .line 94
    :cond_1
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->NONE:Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    return-object v0

    .line 98
    :cond_2
    sget-object v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    .line 99
    .local v2, "v":Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
    invoke-virtual {v2}, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    return-object v2

    .line 102
    .end local v2    # "v":Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
    :cond_3
    goto :goto_0

    .line 104
    :cond_4
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/server/config/AllowTcpForwardingValue;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->$VALUES:[Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    invoke-virtual {v0}, [Lorg/apache/sshd/server/config/AllowTcpForwardingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/server/config/AllowTcpForwardingValue;

    return-object v0
.end method
