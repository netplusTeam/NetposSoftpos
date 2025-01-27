.class public Lcom/sleepycat/persist/raw/RawObject;
.super Ljava/lang/Object;
.source "RawObject.java"


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "


# instance fields
.field private elements:[Ljava/lang/Object;

.field private enumConstant:Ljava/lang/String;

.field private superObject:Lcom/sleepycat/persist/raw/RawObject;

.field private type:Lcom/sleepycat/persist/raw/RawType;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/persist/raw/RawType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/sleepycat/persist/raw/RawType;
    .param p2, "enumConstant"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 108
    iput-object p1, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    .line 109
    iput-object p2, p0, Lcom/sleepycat/persist/raw/RawObject;->enumConstant:Ljava/lang/String;

    .line 110
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/persist/raw/RawType;Ljava/util/Map;Lcom/sleepycat/persist/raw/RawObject;)V
    .locals 1
    .param p1, "type"    # Lcom/sleepycat/persist/raw/RawType;
    .param p3, "superObject"    # Lcom/sleepycat/persist/raw/RawObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/persist/raw/RawType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sleepycat/persist/raw/RawObject;",
            ")V"
        }
    .end annotation

    .line 64
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 68
    iput-object p1, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    .line 69
    iput-object p2, p0, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    .line 70
    iput-object p3, p0, Lcom/sleepycat/persist/raw/RawObject;->superObject:Lcom/sleepycat/persist/raw/RawObject;

    .line 71
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/sleepycat/persist/raw/RawType;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Lcom/sleepycat/persist/raw/RawType;
    .param p2, "elements"    # [Ljava/lang/Object;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 89
    iput-object p1, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    .line 90
    iput-object p2, p0, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    .line 91
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static formatId(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "id"    # Ljava/lang/String;

    .line 326
    if-eqz p1, :cond_1

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, " index=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :cond_0
    const-string v0, " field=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    :cond_1
    return-void
.end method

.method private formatRawObject(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "isSuper"    # Z

    .line 246
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v0}, Lcom/sleepycat/persist/raw/RawType;->isEnum()Z

    move-result v0

    const-string v1, "\" typeId=\""

    const-string v2, " class=\""

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, "<Enum"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {p1, p3}, Lcom/sleepycat/persist/raw/RawObject;->formatId(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v0}, Lcom/sleepycat/persist/raw/RawType;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v0}, Lcom/sleepycat/persist/raw/RawType;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->enumConstant:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v0, "</Enum>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "indent2":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v3, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v3}, Lcom/sleepycat/persist/raw/RawType;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    const-string v3, "<Array"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v3, "</Array>"

    .local v3, "endTag":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v3    # "endTag":Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    .line 265
    const-string v3, "<Super"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v3, "</Super>"

    .restart local v3    # "endTag":Ljava/lang/String;
    goto :goto_0

    .line 268
    .end local v3    # "endTag":Ljava/lang/String;
    :cond_2
    const-string v3, "<Object"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v3, "</Object>"

    .line 271
    .restart local v3    # "endTag":Ljava/lang/String;
    :goto_0
    invoke-static {p1, p3}, Lcom/sleepycat/persist/raw/RawObject;->formatId(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v4}, Lcom/sleepycat/persist/raw/RawType;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    const-string v4, " length=\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v4, p0, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v2, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v2}, Lcom/sleepycat/persist/raw/RawType;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    iget-object v1, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v1}, Lcom/sleepycat/persist/raw/RawType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "\">\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/sleepycat/persist/raw/RawObject;->superObject:Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v1, :cond_4

    .line 284
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p1, v0, v2, v4}, Lcom/sleepycat/persist/raw/RawObject;->formatRawObject(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-interface {v1}, Lcom/sleepycat/persist/raw/RawType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 288
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {p1, v0, v2, v4}, Lcom/sleepycat/persist/raw/RawObject;->formatValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_5
    goto :goto_3

    .line 291
    :cond_6
    new-instance v1, Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 292
    .local v1, "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v0, v4, v5}, Lcom/sleepycat/persist/raw/RawObject;->formatValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_2

    .line 296
    .end local v1    # "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .end local v0    # "indent2":Ljava/lang/String;
    .end local v3    # "endTag":Ljava/lang/String;
    :goto_4
    return-void
.end method

.method private static formatValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/Object;

    .line 306
    if-nez p3, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v0, "<Null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {p0, p2}, Lcom/sleepycat/persist/raw/RawObject;->formatId(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 310
    const-string v0, "/>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 311
    :cond_0
    instance-of v0, p3, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v0, :cond_1

    .line 312
    move-object v0, p3

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sleepycat/persist/raw/RawObject;->formatRawObject(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "<Value"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p0, p2}, Lcom/sleepycat/persist/raw/RawObject;->formatId(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 317
    const-string v0, " class=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v0, "</Value>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 181
    return v0

    .line 183
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/persist/raw/RawObject;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 184
    return v2

    .line 186
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/persist/raw/RawObject;

    .line 187
    .local v1, "o":Lcom/sleepycat/persist/raw/RawObject;
    iget-object v3, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    iget-object v4, v1, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    if-eq v3, v4, :cond_2

    .line 188
    return v2

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    iget-object v4, v1, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 191
    return v2

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/persist/raw/RawObject;->enumConstant:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 194
    iget-object v4, v1, Lcom/sleepycat/persist/raw/RawObject;->enumConstant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 195
    return v2

    .line 198
    :cond_4
    iget-object v3, v1, Lcom/sleepycat/persist/raw/RawObject;->enumConstant:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 199
    return v2

    .line 202
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 203
    iget-object v4, v1, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 204
    return v2

    .line 207
    :cond_6
    iget-object v3, v1, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    if-eqz v3, :cond_7

    .line 208
    return v2

    .line 211
    :cond_7
    iget-object v3, p0, Lcom/sleepycat/persist/raw/RawObject;->superObject:Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v3, :cond_8

    .line 212
    iget-object v4, v1, Lcom/sleepycat/persist/raw/RawObject;->superObject:Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v3, v4}, Lcom/sleepycat/persist/raw/RawObject;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 213
    return v2

    .line 216
    :cond_8
    iget-object v3, v1, Lcom/sleepycat/persist/raw/RawObject;->superObject:Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v3, :cond_9

    .line 217
    return v2

    .line 220
    :cond_9
    return v0
.end method

.method public getElements()[Ljava/lang/Object;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method public getEnum()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->enumConstant:Ljava/lang/String;

    return-object v0
.end method

.method public getSuper()Lcom/sleepycat/persist/raw/RawObject;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->superObject:Lcom/sleepycat/persist/raw/RawObject;

    return-object v0
.end method

.method public getType()Lcom/sleepycat/persist/raw/RawType;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    return-object v0
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/sleepycat/persist/raw/RawObject;->type:Lcom/sleepycat/persist/raw/RawType;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/persist/raw/RawObject;->elements:[Ljava/lang/Object;

    .line 226
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/raw/RawObject;->enumConstant:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/raw/RawObject;->values:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 228
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/persist/raw/RawObject;->superObject:Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {v1}, Lcom/sleepycat/persist/raw/RawObject;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    add-int/2addr v0, v2

    .line 225
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sleepycat/persist/raw/RawObject;->formatRawObject(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
