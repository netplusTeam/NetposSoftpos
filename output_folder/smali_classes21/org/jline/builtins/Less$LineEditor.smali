.class Lorg/jline/builtins/Less$LineEditor;
.super Ljava/lang/Object;
.source "Less.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Less;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineEditor"
.end annotation


# instance fields
.field private final begPos:I

.field final synthetic this$0:Lorg/jline/builtins/Less;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/Less;I)V
    .locals 0
    .param p2, "begPos"    # I

    .line 688
    iput-object p1, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput p2, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    .line 690
    return-void
.end method


# virtual methods
.method public editBuffer(Lorg/jline/builtins/Less$Operation;I)I
    .locals 4
    .param p1, "op"    # Lorg/jline/builtins/Less$Operation;
    .param p2, "curPos"    # I

    .line 693
    sget-object v0, Lorg/jline/builtins/Less$1;->$SwitchMap$org$jline$builtins$Less$Operation:[I

    invoke-virtual {p1}, Lorg/jline/builtins/Less$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x20

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    .line 764
    :sswitch_0
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 765
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_6

    .line 759
    :sswitch_1
    iget v0, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    if-le p2, v0, :cond_6

    .line 760
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_6

    .line 755
    :sswitch_2
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 756
    const/4 p2, 0x1

    .line 757
    goto/16 :goto_6

    .line 735
    :goto_0
    :sswitch_3
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 736
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 742
    :cond_0
    :goto_1
    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    if-lt v0, v2, :cond_6

    .line 743
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 744
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 746
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 747
    goto/16 :goto_6

    .line 729
    :sswitch_4
    iget v0, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    if-lt p2, v0, :cond_6

    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 730
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 713
    :sswitch_5
    iget v0, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    .line 714
    .local v0, "newPos":I
    add-int/lit8 v2, p2, -0x2

    .local v2, "i":I
    :goto_2
    iget v3, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    if-le v2, v3, :cond_3

    .line 715
    iget-object v3, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v3, v3, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_2

    .line 716
    add-int/lit8 v0, v2, 0x1

    .line 717
    goto :goto_3

    .line 714
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 720
    .end local v2    # "i":I
    :cond_3
    :goto_3
    move p2, v0

    .line 721
    goto :goto_6

    .line 703
    .end local v0    # "newPos":I
    :sswitch_6
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 704
    .restart local v0    # "newPos":I
    move v2, p2

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v3, v3, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 705
    iget-object v3, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v3, v3, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_4

    .line 706
    add-int/lit8 v0, v2, 0x1

    .line 707
    goto :goto_5

    .line 704
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 710
    .end local v2    # "i":I
    :cond_5
    :goto_5
    move p2, v0

    .line 711
    goto :goto_6

    .line 698
    .end local v0    # "newPos":I
    :sswitch_7
    iget v0, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_6

    .line 699
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 695
    :sswitch_8
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0x1

    .end local p2    # "curPos":I
    .local v1, "curPos":I
    iget-object v2, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v2, v2, Lorg/jline/builtins/Less;->bindingReader:Lorg/jline/keymap/BindingReader;

    invoke-virtual {v2}, Lorg/jline/keymap/BindingReader;->getLastBinding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    move p2, v1

    goto :goto_6

    .line 726
    .end local v1    # "curPos":I
    .restart local p2    # "curPos":I
    :sswitch_9
    iget-object v0, p0, Lorg/jline/builtins/Less$LineEditor;->this$0:Lorg/jline/builtins/Less;

    iget-object v0, v0, Lorg/jline/builtins/Less;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 727
    goto :goto_6

    .line 723
    :sswitch_a
    iget p2, p0, Lorg/jline/builtins/Less$LineEditor;->begPos:I

    .line 724
    nop

    .line 769
    :cond_6
    :goto_6
    return p2

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_a
        0xd -> :sswitch_9
        0x25 -> :sswitch_8
        0x26 -> :sswitch_7
        0x27 -> :sswitch_6
        0x28 -> :sswitch_5
        0x29 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_2
        0x2c -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method
