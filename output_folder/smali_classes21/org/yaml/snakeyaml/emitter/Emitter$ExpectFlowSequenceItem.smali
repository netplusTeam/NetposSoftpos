.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;
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
    name = "ExpectFlowSequenceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/emitter/Emitter$1;

    .line 460
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    return-void
.end method


# virtual methods
.method public expect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    const-string v1, ","

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1900(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1802(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 464
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2010(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    .line 465
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 467
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 469
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v1, "]"

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 470
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 473
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/emitter/EmitterState;

    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    goto :goto_0

    .line 475
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 476
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2200(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    :cond_4
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 479
    :cond_5
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v0

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {v1, v3}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 480
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-static {v0, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1600(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V

    .line 482
    :goto_0
    return-void
.end method
