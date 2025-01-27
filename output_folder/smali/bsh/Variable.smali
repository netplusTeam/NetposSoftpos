.class public Lbsh/Variable;
.super Ljava/lang/Object;
.source "Variable.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ASSIGNMENT:I = 0x1

.field static final DECLARATION:I


# instance fields
.field lhs:Lbsh/LHS;

.field modifiers:Lbsh/Modifiers;

.field name:Ljava/lang/String;

.field type:Ljava/lang/Class;

.field typeDescriptor:Ljava/lang/String;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "lhs"    # Lbsh/LHS;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    .line 41
    iput-object p1, p0, Lbsh/Variable;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    .line 43
    iput-object p2, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "modifiers"    # Lbsh/Modifiers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    .line 71
    iput-object p1, p0, Lbsh/Variable;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    .line 73
    iput-object p4, p0, Lbsh/Variable;->modifiers:Lbsh/Modifiers;

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lbsh/Variable;->setValue(Ljava/lang/Object;I)V

    .line 75
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "modifiers"    # Lbsh/Modifiers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v0, p2, p3}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lbsh/Modifiers;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "typeDescriptor"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "modifiers"    # Lbsh/Modifiers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, p1, v0, p3, p4}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)V

    .line 61
    iput-object p2, p0, Lbsh/Variable;->typeDescriptor:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getModifiers()Lbsh/Modifiers;
    .locals 1

    .line 130
    iget-object v0, p0, Lbsh/Variable;->modifiers:Lbsh/Modifiers;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lbsh/Variable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 126
    iget-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getTypeDescriptor()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lbsh/Variable;->typeDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbsh/LHS;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 122
    :cond_1
    iget-object v0, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lbsh/Variable;->modifiers:Lbsh/Modifiers;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 88
    const-string v0, "final"

    invoke-virtual {p0, v0}, Lbsh/Variable;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Final variable, can\'t re-assign."

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 92
    iget-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    invoke-static {v0}, Lbsh/Primitive;->getDefaultValue(Ljava/lang/Class;)Lbsh/Primitive;

    move-result-object p1

    .line 94
    :cond_2
    iget-object v0, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 96
    invoke-static {p1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 97
    return-void

    .line 102
    :cond_3
    iget-object v0, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 103
    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    invoke-static {p1, v0, v1}, Lbsh/Types;->castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 107
    :cond_5
    iput-object p1, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lhs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/Variable;->lhs:Lbsh/LHS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
