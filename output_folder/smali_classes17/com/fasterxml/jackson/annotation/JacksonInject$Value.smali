.class public Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
.super Ljava/lang/Object;
.source "JacksonInject.java"

# interfaces
.implements Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JacksonInject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fasterxml/jackson/annotation/JacksonAnnotationValue<",
        "Lcom/fasterxml/jackson/annotation/JacksonInject;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final EMPTY:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _id:Ljava/lang/Object;

.field protected final _useInput:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "useInput"    # Ljava/lang/Boolean;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    .line 80
    iput-object p2, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    .line 81
    return-void
.end method

.method private static _empty(Ljava/lang/Object;Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "id"    # Ljava/lang/Object;
    .param p1, "useInput"    # Ljava/lang/Boolean;

    .line 211
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static construct(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 1
    .param p0, "id"    # Ljava/lang/Object;
    .param p1, "useInput"    # Ljava/lang/Boolean;

    .line 99
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 p0, 0x0

    .line 102
    :cond_0
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_empty(Ljava/lang/Object;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-object v0

    .line 105
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static empty()Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 1

    .line 95
    sget-object v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-object v0
.end method

.method public static forId(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 1
    .param p0, "id"    # Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->construct(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/JacksonInject;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 2
    .param p0, "src"    # Lcom/fasterxml/jackson/annotation/JacksonInject;

    .line 109
    if-nez p0, :cond_0

    .line 110
    sget-object v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->EMPTY:Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    return-object v0

    .line 112
    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JacksonInject;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JacksonInject;->useInput()Lcom/fasterxml/jackson/annotation/OptBoolean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/OptBoolean;->asBoolean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->construct(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 191
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 192
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 193
    move-object v2, p1

    check-cast v2, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    .line 194
    .local v2, "other":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    iget-object v4, v2, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/annotation/OptBoolean;->equals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    iget-object v3, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 196
    iget-object v3, v2, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 198
    :cond_3
    iget-object v0, v2, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 201
    .end local v2    # "other":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    :cond_4
    return v1
.end method

.method public getId()Ljava/lang/Object;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    return-object v0
.end method

.method public getUseInput()Ljava/lang/Boolean;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, "h":I
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "JacksonInject.Value(id=%s,useInput=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/fasterxml/jackson/annotation/JacksonInject;",
            ">;"
        }
    .end annotation

    .line 85
    const-class v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    return-object v0
.end method

.method public willUseInput(Z)Z
    .locals 1
    .param p1, "defaultSetting"    # Z

    .line 161
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public withId(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;

    .line 126
    if-nez p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 128
    return-object p0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    return-object p0

    .line 133
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public withUseInput(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .locals 2
    .param p1, "useInput"    # Ljava/lang/Boolean;

    .line 137
    if-nez p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 139
    return-object p0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_useInput:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    return-object p0

    .line 144
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->_id:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;-><init>(Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object v0
.end method
