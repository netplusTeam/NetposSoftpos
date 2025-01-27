.class public Lbsh/Modifiers;
.super Ljava/lang/Object;
.source "Modifiers.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CLASS:I = 0x0

.field public static final FIELD:I = 0x2

.field public static final METHOD:I = 0x1


# instance fields
.field modifiers:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private insureNo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "modifier"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p0, p1}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be declared \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateForClass()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lbsh/Modifiers;->validateForMethod()V

    .line 98
    const-string v0, "native"

    const-string v1, "Class"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "synchronized"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private validateForField()V
    .locals 2

    .line 91
    const-string/jumbo v0, "synchronized"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "native"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "abstract"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private validateForMethod()V
    .locals 2

    .line 86
    const-string/jumbo v0, "volatile"

    const-string v1, "Method"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v0, "transient"

    invoke-direct {p0, v0, v1}, Lbsh/Modifiers;->insureNo(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public addModifier(ILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    .line 50
    :cond_0
    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "existing":Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "count":I
    const-string/jumbo v2, "private"

    invoke-virtual {p0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 56
    :cond_1
    const-string/jumbo v2, "protected"

    invoke-virtual {p0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 57
    :cond_2
    const-string/jumbo v2, "public"

    invoke-virtual {p0, v2}, Lbsh/Modifiers;->hasModifier(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 58
    :cond_3
    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    .line 62
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    invoke-direct {p0}, Lbsh/Modifiers;->validateForField()V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0}, Lbsh/Modifiers;->validateForMethod()V

    .line 69
    goto :goto_0

    .line 65
    :pswitch_2
    invoke-direct {p0}, Lbsh/Modifiers;->validateForClass()V

    .line 66
    nop

    .line 74
    :goto_0
    return-void

    .line 59
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "public/private/protected cannot be used in combination."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v1    # "count":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate modifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasModifier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    .line 80
    :cond_0
    iget-object v0, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modifiers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbsh/Modifiers;->modifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
