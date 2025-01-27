.class public interface abstract Lorg/apache/sshd/client/ClientFactoryManager;
.super Ljava/lang/Object;
.source "ClientFactoryManager.java"

# interfaces
.implements Lorg/apache/sshd/common/FactoryManager;
.implements Lorg/apache/sshd/client/session/ClientProxyConnectorHolder;
.implements Lorg/apache/sshd/common/config/keys/FilePasswordProviderManager;
.implements Lorg/apache/sshd/client/config/keys/ClientIdentityLoaderManager;
.implements Lorg/apache/sshd/client/ClientAuthenticationManager;


# static fields
.field public static final CLIENT_IDENTIFICATION:Ljava/lang/String; = "client-identification"

.field public static final DEFAULT_HEARTBEAT_INTERVAL:J = 0x0L

.field public static final DEFAULT_HEARTBEAT_REPLY_WAIT:J = 0x0L

.field public static final DEFAULT_IGNORE_INVALID_IDENTITIES:Z = true

.field public static final DEFAULT_KEEP_ALIVE_HEARTBEAT_STRING:Ljava/lang/String; = "keepalive@sshd.apache.org"

.field public static final DEFAULT_SEND_IMMEDIATE_IDENTIFICATION:Z = true

.field public static final DEFAULT_SEND_KEXINIT:Z = true

.field public static final HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartbeat-interval"

.field public static final HEARTBEAT_REPLY_WAIT:Ljava/lang/String; = "heartbeat-reply-wait"

.field public static final HEARTBEAT_REQUEST:Ljava/lang/String; = "heartbeat-request"

.field public static final IGNORE_INVALID_IDENTITIES:Ljava/lang/String; = "ignore-invalid-identities"

.field public static final SEND_IMMEDIATE_IDENTIFICATION:Ljava/lang/String; = "send-immediate-identification"

.field public static final SEND_IMMEDIATE_KEXINIT:Ljava/lang/String; = "send-immediate-kex-init"


# virtual methods
.method public abstract getHostConfigEntryResolver()Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;
.end method

.method public abstract setHostConfigEntryResolver(Lorg/apache/sshd/client/config/hosts/HostConfigEntryResolver;)V
.end method
