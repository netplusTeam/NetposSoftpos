.class Lorg/jline/console/impl/ConsoleEngineImpl$AliasValueCompleter;
.super Ljava/lang/Object;
.source "ConsoleEngineImpl.java"

# interfaces
.implements Lorg/jline/reader/Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/console/impl/ConsoleEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AliasValueCompleter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final aliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1190
    const-class v0, Lorg/jline/console/impl/ConsoleEngineImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1193
    .local p1, "aliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    iput-object p1, p0, Lorg/jline/console/impl/ConsoleEngineImpl$AliasValueCompleter;->aliases:Ljava/util/Map;

    .line 1195
    return-void
.end method


# virtual methods
.method public complete(Lorg/jline/reader/LineReader;Lorg/jline/reader/ParsedLine;Ljava/util/List;)V
    .locals 12
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "commandLine"    # Lorg/jline/reader/ParsedLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/reader/LineReader;",
            "Lorg/jline/reader/ParsedLine;",
            "Ljava/util/List<",
            "Lorg/jline/reader/Candidate;",
            ">;)V"
        }
    .end annotation

    .line 1199
    .local p3, "candidates":Ljava/util/List;, "Ljava/util/List<Lorg/jline/reader/Candidate;>;"
    if-eqz p2, :cond_2

    .line 1200
    if-eqz p3, :cond_1

    .line 1201
    invoke-interface {p2}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    .line 1202
    .local v0, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1204
    .local v1, "h":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1205
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$AliasValueCompleter;->aliases:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    iget-object v2, p0, Lorg/jline/console/impl/ConsoleEngineImpl$AliasValueCompleter;->aliases:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1207
    .local v2, "v":Ljava/lang/String;
    new-instance v11, Lorg/jline/reader/Candidate;

    invoke-static {v2}, Lorg/jline/utils/AttributedString;->stripAnsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v11

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Lorg/jline/reader/Candidate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1212
    .end local v1    # "h":Ljava/lang/String;
    .end local v2    # "v":Ljava/lang/String;
    :cond_0
    return-void

    .line 1200
    .end local v0    # "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1199
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
