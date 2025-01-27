.class abstract Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# instance fields
.field attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

.field private hasEmptyAttributeValue:Z

.field private hasPendingAttributeValue:Z

.field private pendingAttributeName:Ljava/lang/String;

.field private pendingAttributeValue:Ljava/lang/StringBuilder;

.field private pendingAttributeValueS:Ljava/lang/String;

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 117
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 118
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttributeValue()V
    .locals 2

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 226
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method final appendAttributeName(C)V
    .locals 1
    .param p1, "append"    # C

    .line 197
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;)V
    .locals 2
    .param p1, "append"    # Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 194
    return-void
.end method

.method final appendAttributeValue(C)V
    .locals 1
    .param p1, "append"    # C

    .line 210
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 211
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 202
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_0
    return-void
.end method

.method final appendAttributeValue([C)V
    .locals 1
    .param p1, "append"    # [C

    .line 215
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 216
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 217
    return-void
.end method

.method final appendTagName(C)V
    .locals 1
    .param p1, "append"    # C

    .line 189
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .locals 2
    .param p1, "append"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method final finaliseTag()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->newAttribute()V

    .line 162
    :cond_0
    return-void
.end method

.method final getAttributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object v0
.end method

.method final isSelfClosing()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method final name()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isFalse(Z)V

    .line 166
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method final newAttribute()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 140
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    if-eqz v0, :cond_2

    .line 141
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    goto :goto_1

    .line 143
    .end local v0    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :cond_2
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    if-eqz v0, :cond_3

    .line 144
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    goto :goto_1

    .line 146
    .end local v0    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :cond_3
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/BooleanAttribute;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v0    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)V

    .line 149
    .end local v0    # "attribute":Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 151
    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 152
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 153
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    .line 154
    return-void
.end method

.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 2

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 126
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 128
    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 129
    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 130
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 131
    return-object p0
.end method

.method final setEmptyAttributeValue()V
    .locals 1

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 221
    return-void
.end method
