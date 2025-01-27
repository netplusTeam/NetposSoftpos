.class public Lorg/apache/sshd/server/shell/UnknownCommandFactory;
.super Ljava/lang/Object;
.source "UnknownCommandFactory.java"

# interfaces
.implements Lorg/apache/sshd/server/command/CommandFactory;


# static fields
.field public static final FACTORY_NAME:Ljava/lang/String; = "unknown"

.field public static final INSTANCE:Lorg/apache/sshd/server/shell/UnknownCommandFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/sshd/server/shell/UnknownCommandFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/shell/UnknownCommandFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/shell/UnknownCommandFactory;->INSTANCE:Lorg/apache/sshd/server/shell/UnknownCommandFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public createCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "command"    # Ljava/lang/String;

    .line 45
    new-instance v0, Lorg/apache/sshd/server/shell/UnknownCommand;

    invoke-direct {v0, p2}, Lorg/apache/sshd/server/shell/UnknownCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    const-string/jumbo v0, "unknown"

    return-object v0
.end method
