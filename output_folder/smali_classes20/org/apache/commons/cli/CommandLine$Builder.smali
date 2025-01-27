.class public final Lorg/apache/commons/cli/CommandLine$Builder;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/cli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final commandLine:Lorg/apache/commons/cli/CommandLine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    new-instance v0, Lorg/apache/commons/cli/CommandLine;

    invoke-direct {v0}, Lorg/apache/commons/cli/CommandLine;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/cli/CommandLine$Builder;->commandLine:Lorg/apache/commons/cli/CommandLine;

    return-void
.end method


# virtual methods
.method public addArg(Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine$Builder;
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lorg/apache/commons/cli/CommandLine$Builder;->commandLine:Lorg/apache/commons/cli/CommandLine;

    invoke-virtual {v0, p1}, Lorg/apache/commons/cli/CommandLine;->addArg(Ljava/lang/String;)V

    .line 417
    return-object p0
.end method

.method public addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/CommandLine$Builder;
    .locals 1
    .param p1, "opt"    # Lorg/apache/commons/cli/Option;

    .line 403
    iget-object v0, p0, Lorg/apache/commons/cli/CommandLine$Builder;->commandLine:Lorg/apache/commons/cli/CommandLine;

    invoke-virtual {v0, p1}, Lorg/apache/commons/cli/CommandLine;->addOption(Lorg/apache/commons/cli/Option;)V

    .line 404
    return-object p0
.end method

.method public build()Lorg/apache/commons/cli/CommandLine;
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/commons/cli/CommandLine$Builder;->commandLine:Lorg/apache/commons/cli/CommandLine;

    return-object v0
.end method
