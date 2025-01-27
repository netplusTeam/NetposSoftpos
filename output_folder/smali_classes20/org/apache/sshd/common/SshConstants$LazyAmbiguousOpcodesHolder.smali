.class final Lorg/apache/sshd/common/SshConstants$LazyAmbiguousOpcodesHolder;
.super Ljava/lang/Object;
.source "SshConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/SshConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyAmbiguousOpcodesHolder"
.end annotation


# static fields
.field private static final AMBIGUOUS_OPCODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 142
    new-instance v0, Ljava/util/HashSet;

    const-class v1, Lorg/apache/sshd/common/SshConstants;

    .line 145
    const-string v2, "SSH_MSG_"

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->getAmbiguousMenmonics(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/SshConstants$LazyAmbiguousOpcodesHolder;->AMBIGUOUS_OPCODES:Ljava/util/Set;

    .line 142
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .line 141
    sget-object v0, Lorg/apache/sshd/common/SshConstants$LazyAmbiguousOpcodesHolder;->AMBIGUOUS_OPCODES:Ljava/util/Set;

    return-object v0
.end method
