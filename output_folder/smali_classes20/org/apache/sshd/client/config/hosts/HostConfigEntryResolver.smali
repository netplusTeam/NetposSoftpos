.class public interface abstract Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
.super Ljava/lang/Object;
.source "HostConfigEntryResolver.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver$1;

    invoke-direct {v0}, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;->EMPTY:Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;

    return-void
.end method


# virtual methods
.method public abstract resolveEffectiveHost(Ljava/lang/String;ILjava/net/SocketAddress;Ljava/lang/String;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
