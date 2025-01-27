.class public Lorg/jline/console/impl/SystemRegistryImpl$CommandData;
.super Ljava/lang/Object;
.source "SystemRegistryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/SystemRegistryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CommandData"
.end annotation


# instance fields
.field private final append:Z

.field private args:[Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private pipe:Ljava/lang/String;

.field private final rawLine:Ljava/lang/String;

.field private final variable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;
    .param p2, "statement"    # Z
    .param p3, "rawLine"    # Ljava/lang/String;
    .param p4, "variable"    # Ljava/lang/String;
    .param p5, "file"    # Ljava/io/File;
    .param p6, "append"    # Z
    .param p7, "pipe"    # Ljava/lang/String;

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p3, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine:Ljava/lang/String;

    .line 1009
    iput-object p4, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->variable:Ljava/lang/String;

    .line 1010
    iput-object p5, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file:Ljava/io/File;

    .line 1011
    iput-boolean p6, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->append:Z

    .line 1012
    iput-object p7, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe:Ljava/lang/String;

    .line 1013
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->args:[Ljava/lang/String;

    .line 1014
    const-string v0, ""

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command:Ljava/lang/String;

    .line 1015
    if-nez p2, :cond_0

    .line 1016
    invoke-virtual {p1, p3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->parse(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->command()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command:Ljava/lang/String;

    .line 1018
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1019
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->args:[Ljava/lang/String;

    .line 1020
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1021
    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->args:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->args()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;->access$100(Lorg/jline/console/impl/SystemRegistryImpl$ArgsParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1020
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public append()Z
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->append:Z

    return v0
.end method

.method public args()[Ljava/lang/String;
    .locals 1

    .line 1048
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->args:[Ljava/lang/String;

    return-object v0
.end method

.method public command()Ljava/lang/String;
    .locals 1

    .line 1044
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command:Ljava/lang/String;

    return-object v0
.end method

.method public file()Ljava/io/File;
    .locals 1

    .line 1032
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file:Ljava/io/File;

    return-object v0
.end method

.method public pipe()Ljava/lang/String;
    .locals 1

    .line 1056
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe:Ljava/lang/String;

    return-object v0
.end method

.method public rawLine()Ljava/lang/String;
    .locals 1

    .line 1052
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine:Ljava/lang/String;

    return-object v0
.end method

.method public setPipe(Ljava/lang/String;)V
    .locals 0
    .param p1, "pipe"    # Ljava/lang/String;

    .line 1028
    iput-object p1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe:Ljava/lang/String;

    .line 1029
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[rawLine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->rawLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->args:[Ljava/lang/String;

    .line 1064
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", variable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->variable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", append:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->append:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pipe:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->pipe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    return-object v0
.end method

.method public variable()Ljava/lang/String;
    .locals 1

    .line 1040
    iget-object v0, p0, Lorg/jline/console/impl/SystemRegistryImpl$CommandData;->variable:Ljava/lang/String;

    return-object v0
.end method
