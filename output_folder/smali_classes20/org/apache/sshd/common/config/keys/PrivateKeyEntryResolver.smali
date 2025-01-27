.class public interface abstract Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;
.super Ljava/lang/Object;
.source "PrivateKeyEntryResolver.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FAILING:Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;

.field public static final IGNORING:Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;->IGNORING:Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;

    .line 53
    new-instance v0, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver$2;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver$2;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;->FAILING:Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[B)Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
