.class public Lbsh/org/objectweb/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field beginStackSize:I

.field maxStackSize:I

.field next:Lbsh/org/objectweb/asm/Label;

.field owner:Lbsh/org/objectweb/asm/CodeWriter;

.field position:I

.field pushed:Z

.field private referenceCount:I

.field resolved:Z

.field private srcAndRefPositions:[I

.field successors:Lbsh/org/objectweb/asm/Edge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method

.method private addReference(II)V
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "referencePosition"    # I

    .line 206
    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 207
    new-array v0, v1, [I

    iput-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    .line 209
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 210
    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 211
    .local v0, "a":[I
    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    .line 214
    .end local v0    # "a":[I
    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    aput p1, v0, v1

    .line 215
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    aput p2, v0, v2

    .line 216
    return-void
.end method


# virtual methods
.method put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V
    .locals 3
    .param p1, "owner"    # Lbsh/org/objectweb/asm/CodeWriter;
    .param p2, "out"    # Lbsh/org/objectweb/asm/ByteVector;
    .param p3, "source"    # I
    .param p4, "wideOffset"    # Z

    .line 173
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/Label;->resolved:Z

    if-eqz v0, :cond_1

    .line 174
    if-eqz p4, :cond_0

    .line 175
    iget v0, p0, Lbsh/org/objectweb/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 177
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, -0x1

    if-eqz p4, :cond_2

    .line 181
    rsub-int/lit8 v1, p3, -0x1

    iget v2, p2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, v1, v2}, Lbsh/org/objectweb/asm/Label;->addReference(II)V

    .line 182
    invoke-virtual {p2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 184
    :cond_2
    iget v1, p2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {p0, p3, v1}, Lbsh/org/objectweb/asm/Label;->addReference(II)V

    .line 185
    invoke-virtual {p2, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 188
    :goto_0
    return-void
.end method

.method resolve(Lbsh/org/objectweb/asm/CodeWriter;I[B)Z
    .locals 9
    .param p1, "owner"    # Lbsh/org/objectweb/asm/CodeWriter;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "needUpdate":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbsh/org/objectweb/asm/Label;->resolved:Z

    .line 252
    iput p2, p0, Lbsh/org/objectweb/asm/Label;->position:I

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "i":I
    :goto_0
    iget v3, p0, Lbsh/org/objectweb/asm/Label;->referenceCount:I

    if-ge v2, v3, :cond_4

    .line 255
    iget-object v3, p0, Lbsh/org/objectweb/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    aget v2, v3, v2

    .line 256
    .local v2, "source":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget v3, v3, v4

    .line 258
    .local v3, "reference":I
    if-ltz v2, :cond_3

    .line 259
    sub-int v4, p2, v2

    .line 260
    .local v4, "offset":I
    const/16 v6, -0x8000

    if-lt v4, v6, :cond_0

    const/16 v6, 0x7fff

    if-le v4, v6, :cond_2

    .line 267
    :cond_0
    add-int/lit8 v6, v3, -0x1

    aget-byte v6, p3, v6

    and-int/lit16 v6, v6, 0xff

    .line 268
    .local v6, "opcode":I
    const/16 v7, 0xa8

    if-gt v6, v7, :cond_1

    .line 270
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v6, 0x31

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    goto :goto_1

    .line 273
    :cond_1
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v6, 0x14

    int-to-byte v8, v8

    aput-byte v8, p3, v7

    .line 275
    :goto_1
    const/4 v0, 0x1

    .line 277
    .end local v6    # "opcode":I
    :cond_2
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "reference":I
    .local v6, "reference":I
    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    .line 278
    int-to-byte v3, v4

    aput-byte v3, p3, v6

    goto :goto_2

    .line 280
    .end local v4    # "offset":I
    .end local v6    # "reference":I
    .restart local v3    # "reference":I
    :cond_3
    add-int v4, p2, v2

    add-int/2addr v4, v1

    .line 281
    .restart local v4    # "offset":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "reference":I
    .restart local v6    # "reference":I
    ushr-int/lit8 v7, v4, 0x18

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    .line 282
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "reference":I
    .restart local v3    # "reference":I
    ushr-int/lit8 v7, v4, 0x10

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    .line 283
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "reference":I
    .restart local v6    # "reference":I
    ushr-int/lit8 v7, v4, 0x8

    int-to-byte v7, v7

    aput-byte v7, p3, v3

    .line 284
    int-to-byte v3, v4

    aput-byte v3, p3, v6

    .line 286
    .end local v2    # "source":I
    .end local v4    # "offset":I
    .end local v6    # "reference":I
    :goto_2
    move v2, v5

    goto :goto_0

    .line 287
    .end local v5    # "i":I
    .local v2, "i":I
    :cond_4
    return v0
.end method
