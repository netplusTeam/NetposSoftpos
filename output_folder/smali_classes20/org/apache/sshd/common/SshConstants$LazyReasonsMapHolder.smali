.class final Lorg/apache/sshd/common/SshConstants$LazyReasonsMapHolder;
.super Ljava/lang/Object;
.source "SshConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/SshConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyReasonsMapHolder"
.end annotation


# static fields
.field private static final REASONS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 208
    const-class v0, Lorg/apache/sshd/common/SshConstants;

    .line 209
    const-string v1, "SSH2_DISCONNECT_"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->generateMnemonicMap(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/SshConstants$LazyReasonsMapHolder;->REASONS_MAP:Ljava/util/Map;

    .line 208
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 207
    sget-object v0, Lorg/apache/sshd/common/SshConstants$LazyReasonsMapHolder;->REASONS_MAP:Ljava/util/Map;

    return-object v0
.end method
