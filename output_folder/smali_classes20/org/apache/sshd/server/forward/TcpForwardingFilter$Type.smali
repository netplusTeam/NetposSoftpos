.class public final enum Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
.super Ljava/lang/Enum;
.source "TcpForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/forward/TcpForwardingFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;",
        ">;",
        "Lorg/apache/sshd/common/NamedResource;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

.field public static final enum Direct:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

.field public static final enum Forwarded:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 77
    new-instance v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    const-string v1, "Direct"

    const/4 v2, 0x0

    const-string v3, "direct-tcpip"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->Direct:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 78
    new-instance v1, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    const-string v3, "Forwarded"

    const/4 v4, 0x1

    const-string v5, "forwarded-tcpip"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->Forwarded:Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 76
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->$VALUES:[Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 80
    const-class v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 81
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->VALUES:Ljava/util/Set;

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public static fromEnumName(Ljava/lang/String;)Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 129
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    return-object v1

    .line 133
    :cond_0
    sget-object v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    .line 134
    .local v2, "t":Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    invoke-virtual {v2}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    return-object v2

    .line 137
    .end local v2    # "t":Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    :cond_1
    goto :goto_0

    .line 139
    :cond_2
    return-object v1
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 120
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 102
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->fromName(Ljava/lang/String;)Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    move-result-object v0

    .line 107
    .local v0, "t":Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    if-nez v0, :cond_1

    .line 108
    invoke-static {p0}, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->fromEnumName(Ljava/lang/String;)Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    move-result-object v0

    .line 111
    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;
    .locals 1

    .line 76
    sget-object v0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->$VALUES:[Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    invoke-virtual {v0}, [Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/server/forward/TcpForwardingFilter$Type;->name:Ljava/lang/String;

    return-object v0
.end method
