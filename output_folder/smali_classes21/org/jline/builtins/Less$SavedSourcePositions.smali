.class Lorg/jline/builtins/Less$SavedSourcePositions;
.super Ljava/lang/Object;
.source "Less.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Less;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedSourcePositions"
.end annotation


# instance fields
.field saveFirstColumnToDisplay:I

.field saveFirstLineToDisplay:I

.field saveOffsetInLine:I

.field savePrintLineNumbers:Z

.field saveSourceIdx:I

.field final synthetic this$0:Lorg/jline/builtins/Less;


# direct methods
.method public constructor <init>(Lorg/jline/builtins/Less;)V
    .locals 1

    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/builtins/Less$SavedSourcePositions;-><init>(Lorg/jline/builtins/Less;I)V

    .line 782
    return-void
.end method

.method public constructor <init>(Lorg/jline/builtins/Less;I)V
    .locals 1
    .param p2, "dec"    # I

    .line 783
    iput-object p1, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iget v0, p1, Lorg/jline/builtins/Less;->sourceIdx:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveSourceIdx:I

    .line 785
    iget v0, p1, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    iput v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveFirstLineToDisplay:I

    .line 786
    iget v0, p1, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    iput v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveFirstColumnToDisplay:I

    .line 787
    iget v0, p1, Lorg/jline/builtins/Less;->offsetInLine:I

    iput v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveOffsetInLine:I

    .line 788
    iget-boolean p1, p1, Lorg/jline/builtins/Less;->printLineNumbers:Z

    iput-boolean p1, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->savePrintLineNumbers:Z

    .line 789
    return-void
.end method


# virtual methods
.method public restore(Ljava/lang/String;)V
    .locals 3
    .param p1, "failingSource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    iget v1, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveSourceIdx:I

    iput v1, v0, Lorg/jline/builtins/Less;->sourceIdx:I

    .line 793
    iget-object v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    invoke-virtual {v0}, Lorg/jline/builtins/Less;->openSource()V

    .line 794
    iget-object v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    iget v1, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveFirstLineToDisplay:I

    iput v1, v0, Lorg/jline/builtins/Less;->firstLineToDisplay:I

    .line 795
    iget-object v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    iget v1, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveFirstColumnToDisplay:I

    iput v1, v0, Lorg/jline/builtins/Less;->firstColumnToDisplay:I

    .line 796
    iget-object v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    iget v1, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->saveOffsetInLine:I

    iput v1, v0, Lorg/jline/builtins/Less;->offsetInLine:I

    .line 797
    iget-object v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    iget-boolean v1, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->savePrintLineNumbers:Z

    iput-boolean v1, v0, Lorg/jline/builtins/Less;->printLineNumbers:Z

    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lorg/jline/builtins/Less$SavedSourcePositions;->this$0:Lorg/jline/builtins/Less;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/jline/builtins/Less;->message:Ljava/lang/String;

    .line 801
    :cond_0
    return-void
.end method
