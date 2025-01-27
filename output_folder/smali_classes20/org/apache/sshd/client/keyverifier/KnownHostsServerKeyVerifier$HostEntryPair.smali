.class public Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;
.super Ljava/lang/Object;
.source "KnownHostsServerKeyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostEntryPair"
.end annotation


# instance fields
.field private hostEntry:Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

.field private serverKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .param p2, "key"    # Ljava/security/PublicKey;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "No entry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    iput-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->hostEntry:Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    .line 94
    const-string v0, "No key"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->serverKey:Ljava/security/PublicKey;

    .line 95
    return-void
.end method


# virtual methods
.method public getHostEntry()Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->hostEntry:Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    return-object v0
.end method

.method public getServerKey()Ljava/security/PublicKey;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->serverKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public setHostEntry(Lorg/apache/sshd/client/config/hosts/KnownHostEntry;)V
    .locals 0
    .param p1, "hostEntry"    # Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    .line 102
    iput-object p1, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->hostEntry:Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    .line 103
    return-void
.end method

.method public setServerKey(Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "serverKey"    # Ljava/security/PublicKey;

    .line 110
    iput-object p1, p0, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->serverKey:Ljava/security/PublicKey;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lorg/apache/sshd/client/keyverifier/KnownHostsServerKeyVerifier$HostEntryPair;->getHostEntry()Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
