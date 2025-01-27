.class public Lorg/jline/terminal/MouseEvent;
.super Ljava/lang/Object;
.source "MouseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/terminal/MouseEvent$Modifier;,
        Lorg/jline/terminal/MouseEvent$Button;,
        Lorg/jline/terminal/MouseEvent$Type;
    }
.end annotation


# instance fields
.field private final button:Lorg/jline/terminal/MouseEvent$Button;

.field private final modifiers:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/MouseEvent$Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/jline/terminal/MouseEvent$Type;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Lorg/jline/terminal/MouseEvent$Type;Lorg/jline/terminal/MouseEvent$Button;Ljava/util/EnumSet;II)V
    .locals 0
    .param p1, "type"    # Lorg/jline/terminal/MouseEvent$Type;
    .param p2, "button"    # Lorg/jline/terminal/MouseEvent$Button;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jline/terminal/MouseEvent$Type;",
            "Lorg/jline/terminal/MouseEvent$Button;",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/MouseEvent$Modifier;",
            ">;II)V"
        }
    .end annotation

    .line 44
    .local p3, "modifiers":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lorg/jline/terminal/MouseEvent$Modifier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/jline/terminal/MouseEvent;->type:Lorg/jline/terminal/MouseEvent$Type;

    .line 46
    iput-object p2, p0, Lorg/jline/terminal/MouseEvent;->button:Lorg/jline/terminal/MouseEvent$Button;

    .line 47
    iput-object p3, p0, Lorg/jline/terminal/MouseEvent;->modifiers:Ljava/util/EnumSet;

    .line 48
    iput p4, p0, Lorg/jline/terminal/MouseEvent;->x:I

    .line 49
    iput p5, p0, Lorg/jline/terminal/MouseEvent;->y:I

    .line 50
    return-void
.end method


# virtual methods
.method public getButton()Lorg/jline/terminal/MouseEvent$Button;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jline/terminal/MouseEvent;->button:Lorg/jline/terminal/MouseEvent$Button;

    return-object v0
.end method

.method public getModifiers()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/jline/terminal/MouseEvent$Modifier;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/jline/terminal/MouseEvent;->modifiers:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getType()Lorg/jline/terminal/MouseEvent$Type;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jline/terminal/MouseEvent;->type:Lorg/jline/terminal/MouseEvent$Type;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/jline/terminal/MouseEvent;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 69
    iget v0, p0, Lorg/jline/terminal/MouseEvent;->y:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MouseEvent[type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/terminal/MouseEvent;->type:Lorg/jline/terminal/MouseEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/terminal/MouseEvent;->button:Lorg/jline/terminal/MouseEvent$Button;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/terminal/MouseEvent;->modifiers:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/terminal/MouseEvent;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jline/terminal/MouseEvent;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
