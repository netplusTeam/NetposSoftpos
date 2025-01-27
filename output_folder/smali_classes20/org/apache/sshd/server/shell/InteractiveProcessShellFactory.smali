.class public Lorg/apache/sshd/server/shell/InteractiveProcessShellFactory;
.super Lorg/apache/sshd/server/shell/ProcessShellFactory;
.source "InteractiveProcessShellFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/shell/InteractiveProcessShellFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/sshd/server/shell/InteractiveProcessShellFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/shell/InteractiveProcessShellFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/shell/InteractiveProcessShellFactory;->INSTANCE:Lorg/apache/sshd/server/shell/InteractiveProcessShellFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->resolveDefaultInteractiveShellCommand()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->resolveDefaultInteractiveCommandElements()Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/server/shell/ProcessShellFactory;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected resolveEffectiveCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "rawCommand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/channel/ChannelSession;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    .local p3, "parsedElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object p3
.end method
