.class final Lorg/apache/sshd/common/SshConstants$LazyMessagesMapHolder;
.super Ljava/lang/Object;
.source "SshConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/SshConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyMessagesMapHolder"
.end annotation


# static fields
.field private static final MESSAGES_MAP:Ljava/util/Map;
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

    .line 171
    const-class v0, Lorg/apache/sshd/common/SshConstants;

    new-instance v1, Lorg/apache/sshd/common/SshConstants$LazyMessagesMapHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/SshConstants$LazyMessagesMapHolder$$ExternalSyntheticLambda0;-><init>()V

    .line 172
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->generateMnemonicMap(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/SshConstants$LazyMessagesMapHolder;->MESSAGES_MAP:Ljava/util/Map;

    .line 171
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 170
    sget-object v0, Lorg/apache/sshd/common/SshConstants$LazyMessagesMapHolder;->MESSAGES_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p0, "f"    # Ljava/lang/reflect/Field;

    .line 173
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "name":Ljava/lang/String;
    const-string v1, "SSH_MSG_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 175
    return v2

    .line 179
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v1

    invoke-static {v1}, Lorg/apache/sshd/common/SshConstants;->isAmbiguousOpcode(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    return v2
.end method
