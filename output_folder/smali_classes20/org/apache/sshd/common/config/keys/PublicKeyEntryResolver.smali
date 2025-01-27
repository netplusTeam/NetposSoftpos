.class public interface abstract Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
.super Ljava/lang/Object;
.source "PublicKeyEntryResolver.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FAILING:Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;

.field public static final IGNORING:Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;->IGNORING:Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;

    .line 54
    new-instance v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver$2;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver$2;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;->FAILING:Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
