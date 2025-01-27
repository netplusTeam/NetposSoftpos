.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/EmitterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectDocumentStart"
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Z)V
    .locals 0
    .param p2, "first"    # Z

    .line 308
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->first:Z

    .line 310
    return-void
.end method


# virtual methods
.method public expect()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 314
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    .line 315
    .local v0, "ev":Lorg/yaml/snakeyaml/events/DocumentStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v5, "..."

    invoke-virtual {v2, v5, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 317
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 319
    :cond_1
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 320
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$500(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "versionText":Ljava/lang/String;
    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v5, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeVersionDirective(Ljava/lang/String;)V

    .line 323
    .end local v2    # "versionText":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$700()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2, v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$602(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/util/Map;)Ljava/util/Map;

    .line 324
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 325
    new-instance v2, Ljava/util/TreeSet;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 326
    .local v2, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 327
    .local v6, "handle":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 328
    .local v7, "prefix":Ljava/lang/String;
    iget-object v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v8}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$600(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v8, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$800(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 330
    .local v8, "handleText":Ljava/lang/String;
    iget-object v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v9, v7}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$900(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, "prefixText":Ljava/lang/String;
    iget-object v10, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v10, v8, v9}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeTagDirective(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .end local v6    # "handle":Ljava/lang/String;
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "handleText":Ljava/lang/String;
    .end local v9    # "prefixText":Ljava/lang/String;
    goto :goto_0

    .line 334
    .end local v2    # "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->first:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getExplicit()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 335
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v2

    if-nez v2, :cond_5

    .line 336
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;->getTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 337
    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1100(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v4

    .line 338
    .local v2, "implicit":Z
    :goto_1
    if-nez v2, :cond_6

    .line 339
    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 340
    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v6, "---"

    invoke-virtual {v5, v6, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 341
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 342
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 345
    :cond_6
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    new-instance v4, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;

    invoke-direct {v4, v3, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    invoke-static {v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 346
    .end local v0    # "ev":Lorg/yaml/snakeyaml/events/DocumentStartEvent;
    .end local v2    # "implicit":Z
    goto :goto_2

    :cond_7
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    if-eqz v0, :cond_8

    .line 352
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeStreamEnd()V

    .line 353
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    new-instance v2, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    invoke-static {v0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 357
    :goto_2
    return-void

    .line 355
    :cond_8
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected DocumentStartEvent, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
