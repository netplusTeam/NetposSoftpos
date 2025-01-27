.class public Lbsh/org/objectweb/asm/CodeWriter;
.super Ljava/lang/Object;
.source "CodeWriter.java"

# interfaces
.implements Lbsh/org/objectweb/asm/CodeVisitor;


# static fields
.field static final CHECK:Z = false

.field private static final SIZE:[I

.field private static pool:Lbsh/org/objectweb/asm/Edge;


# instance fields
.field private access:I

.field private blockStack:Lbsh/org/objectweb/asm/Label;

.field private catchCount:I

.field private catchTable:Lbsh/org/objectweb/asm/ByteVector;

.field private code:Lbsh/org/objectweb/asm/ByteVector;

.field private final computeMaxs:Z

.field private currentBlock:Lbsh/org/objectweb/asm/Label;

.field private cw:Lbsh/org/objectweb/asm/ClassWriter;

.field private desc:Lbsh/org/objectweb/asm/Item;

.field private exceptionCount:I

.field private exceptions:[I

.field private head:Lbsh/org/objectweb/asm/Edge;

.field private lineNumber:Lbsh/org/objectweb/asm/ByteVector;

.field private lineNumberCount:I

.field private localVar:Lbsh/org/objectweb/asm/ByteVector;

.field private localVarCount:I

.field private maxLocals:I

.field private maxStack:I

.field private maxStackSize:I

.field private name:Lbsh/org/objectweb/asm/Item;

.field next:Lbsh/org/objectweb/asm/CodeWriter;

.field private resize:Z

.field private stackSize:I

.field private tail:Lbsh/org/objectweb/asm/Edge;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 263
    const/16 v0, 0xca

    new-array v0, v0, [I

    .line 264
    .local v0, "b":[I
    const-string v1, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    .line 268
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v0, v2

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    :cond_0
    sput-object v0, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    .line 486
    .end local v0    # "b":[I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "i":I
    return-void
.end method

.method protected constructor <init>(Lbsh/org/objectweb/asm/ClassWriter;Z)V
    .locals 2
    .param p1, "cw"    # Lbsh/org/objectweb/asm/ClassWriter;
    .param p2, "computeMaxs"    # Z

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    .line 501
    iget-object v0, p1, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    if-nez v0, :cond_0

    .line 502
    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->firstMethod:Lbsh/org/objectweb/asm/CodeWriter;

    .line 503
    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p1, Lbsh/org/objectweb/asm/ClassWriter;->lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

    iput-object p0, v0, Lbsh/org/objectweb/asm/CodeWriter;->next:Lbsh/org/objectweb/asm/CodeWriter;

    .line 506
    iput-object p0, p1, Lbsh/org/objectweb/asm/ClassWriter;->lastMethod:Lbsh/org/objectweb/asm/CodeWriter;

    .line 508
    :goto_0
    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    .line 509
    iput-boolean p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    .line 510
    if-eqz p2, :cond_1

    .line 512
    new-instance v0, Lbsh/org/objectweb/asm/Label;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/Label;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    .line 513
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsh/org/objectweb/asm/Label;->pushed:Z

    .line 514
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    .line 516
    :cond_1
    return-void
.end method

.method private addSuccessor(ILbsh/org/objectweb/asm/Label;)V
    .locals 3
    .param p1, "stackSize"    # I
    .param p2, "successor"    # Lbsh/org/objectweb/asm/Label;

    .line 1123
    sget-object v0, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    monitor-enter v0

    .line 1124
    :try_start_0
    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    if-nez v1, :cond_0

    .line 1125
    new-instance v1, Lbsh/org/objectweb/asm/Edge;

    invoke-direct {v1}, Lbsh/org/objectweb/asm/Edge;-><init>()V

    .local v1, "b":Lbsh/org/objectweb/asm/Edge;
    goto :goto_0

    .line 1127
    .end local v1    # "b":Lbsh/org/objectweb/asm/Edge;
    :cond_0
    move-object v2, v1

    .line 1129
    .local v2, "b":Lbsh/org/objectweb/asm/Edge;
    iget-object v1, v1, Lbsh/org/objectweb/asm/Edge;->poolNext:Lbsh/org/objectweb/asm/Edge;

    sput-object v1, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    move-object v1, v2

    .line 1131
    .end local v2    # "b":Lbsh/org/objectweb/asm/Edge;
    .restart local v1    # "b":Lbsh/org/objectweb/asm/Edge;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1133
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->tail:Lbsh/org/objectweb/asm/Edge;

    if-nez v0, :cond_1

    .line 1134
    iput-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->tail:Lbsh/org/objectweb/asm/Edge;

    .line 1136
    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->head:Lbsh/org/objectweb/asm/Edge;

    iput-object v0, v1, Lbsh/org/objectweb/asm/Edge;->poolNext:Lbsh/org/objectweb/asm/Edge;

    .line 1137
    iput-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->head:Lbsh/org/objectweb/asm/Edge;

    .line 1139
    iput p1, v1, Lbsh/org/objectweb/asm/Edge;->stackSize:I

    .line 1140
    iput-object p2, v1, Lbsh/org/objectweb/asm/Edge;->successor:Lbsh/org/objectweb/asm/Label;

    .line 1142
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iget-object v0, v0, Lbsh/org/objectweb/asm/Label;->successors:Lbsh/org/objectweb/asm/Edge;

    iput-object v0, v1, Lbsh/org/objectweb/asm/Edge;->next:Lbsh/org/objectweb/asm/Edge;

    .line 1143
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    iput-object v1, v0, Lbsh/org/objectweb/asm/Label;->successors:Lbsh/org/objectweb/asm/Edge;

    .line 1144
    return-void

    .line 1131
    .end local v1    # "b":Lbsh/org/objectweb/asm/Edge;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 7
    .param p0, "desc"    # Ljava/lang/String;

    .line 1087
    const/4 v0, 0x1

    .line 1088
    .local v0, "n":I
    const/4 v1, 0x1

    .line 1090
    .local v1, "c":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .local v2, "c":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1091
    .local v1, "car":C
    const/16 v3, 0x29

    const/16 v4, 0x4a

    const/16 v5, 0x44

    if-ne v1, v3, :cond_3

    .line 1092
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1093
    shl-int/lit8 v3, v0, 0x2

    const/16 v6, 0x56

    if-ne v1, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x2

    :goto_2
    or-int/2addr v3, v4

    return v3

    .line 1094
    :cond_3
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_5

    .line 1095
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .local v3, "c":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_4

    move v2, v3

    goto :goto_3

    .line 1097
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_7

    .line 1098
    .end local v3    # "c":I
    .restart local v2    # "c":I
    :cond_5
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_9

    .line 1099
    :goto_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v1, v6

    if-ne v6, v3, :cond_6

    .line 1100
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1102
    :cond_6
    if-eq v1, v5, :cond_8

    if-ne v1, v4, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_7

    .line 1103
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_7

    .line 1105
    :cond_9
    if-eq v1, v5, :cond_b

    if-ne v1, v4, :cond_a

    goto :goto_6

    .line 1108
    :cond_a
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_7

    .line 1106
    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    .line 1110
    .end local v2    # "c":I
    .local v1, "c":I
    :goto_7
    goto :goto_0
.end method

.method static getNewOffset([I[III)I
    .locals 3
    .param p0, "indexes"    # [I
    .param p1, "sizes"    # [I
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .line 1739
    sub-int v0, p3, p2

    .line 1740
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1741
    aget v2, p0, v1

    if-ge p2, v2, :cond_0

    aget v2, p0, v1

    if-gt v2, p3, :cond_0

    .line 1742
    aget v2, p1, v1

    add-int/2addr v0, v2

    goto :goto_1

    .line 1743
    :cond_0
    aget v2, p0, v1

    if-ge p3, v2, :cond_1

    aget v2, p0, v1

    if-gt v2, p2, :cond_1

    .line 1744
    aget v2, p1, v1

    sub-int/2addr v0, v2

    .line 1740
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1747
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method static readInt([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 1691
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static readShort([BI)S
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 1679
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static readUnsignedShort([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 1667
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static writeShort([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I
    .param p2, "s"    # I

    .line 1706
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 1707
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 1708
    return-void
.end method


# virtual methods
.method protected getCode()[B
    .locals 1

    .line 1774
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v0, v0, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    return-object v0
.end method

.method protected getCodeSize()I
    .locals 1

    .line 1760
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    return v0
.end method

.method final getSize()I
    .locals 3

    .line 1157
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->resize:Z

    if-eqz v0, :cond_0

    .line 1159
    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [I

    invoke-virtual {p0, v1, v2, v0}, Lbsh/org/objectweb/asm/CodeWriter;->resizeInstructions([I[II)[I

    .line 1161
    :cond_0
    const/16 v0, 0x8

    .line 1162
    .local v0, "size":I
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lez v1, :cond_2

    .line 1163
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Code"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 1164
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x12

    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1165
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_1

    .line 1166
    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 1168
    :cond_1
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v1, :cond_2

    .line 1169
    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 1172
    :cond_2
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lez v1, :cond_3

    .line 1173
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 1174
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 1176
    :cond_3
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 1177
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 1178
    add-int/lit8 v0, v0, 0x6

    .line 1180
    :cond_4
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 1181
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 1182
    add-int/lit8 v0, v0, 0x6

    .line 1184
    :cond_5
    return v0
.end method

.method protected init(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "exceptions"    # [Ljava/lang/String;

    .line 534
    iput p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    .line 535
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->name:Lbsh/org/objectweb/asm/Item;

    .line 536
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p3}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->desc:Lbsh/org/objectweb/asm/Item;

    .line 537
    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 538
    array-length v0, p4

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    .line 539
    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptions:[I

    .line 540
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-ge v0, v1, :cond_0

    .line 541
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptions:[I

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    aget-object v3, p4, v0

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v2

    iget-short v2, v2, Lbsh/org/objectweb/asm/Item;->index:S

    aput v2, v1, v0

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_2

    .line 546
    invoke-static {p3}, Lbsh/org/objectweb/asm/CodeWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 547
    .local v0, "size":I
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 548
    add-int/lit8 v0, v0, -0x1

    .line 550
    :cond_1
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    if-le v0, v1, :cond_2

    .line 551
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    .line 554
    .end local v0    # "size":I
    :cond_2
    return-void
.end method

.method final put(Lbsh/org/objectweb/asm/ByteVector;)V
    .locals 8
    .param p1, "out"    # Lbsh/org/objectweb/asm/ByteVector;

    .line 1195
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->name:Lbsh/org/objectweb/asm/Item;

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->desc:Lbsh/org/objectweb/asm/Item;

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, "attributeCount":I
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-lez v1, :cond_0

    .line 1198
    add-int/lit8 v0, v0, 0x1

    .line 1200
    :cond_0
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lez v1, :cond_1

    .line 1201
    add-int/lit8 v0, v0, 0x1

    .line 1203
    :cond_1
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    const/high16 v2, 0x10000

    and-int v3, v1, v2

    if-eqz v3, :cond_2

    .line 1204
    add-int/lit8 v0, v0, 0x1

    .line 1206
    :cond_2
    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 1207
    add-int/lit8 v0, v0, 0x1

    .line 1209
    :cond_3
    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1210
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    const/4 v4, 0x0

    if-lez v1, :cond_a

    .line 1211
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0xc

    iget v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    .line 1212
    .local v1, "size":I
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_4

    .line 1213
    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    .line 1215
    :cond_4
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_5

    .line 1216
    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    .line 1218
    :cond_5
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v6, "Code"

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v5

    iget-short v5, v5, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v5

    invoke-virtual {v5, v1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1219
    iget v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStack:I

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v5

    iget v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1220
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v5

    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v6, v6, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v7, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v7, v7, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v5, v6, v4, v7}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1221
    iget v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1222
    iget v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    if-lez v5, :cond_6

    .line 1223
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v5, v5, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v5, v4, v6}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1225
    :cond_6
    const/4 v0, 0x0

    .line 1226
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_7

    .line 1227
    add-int/lit8 v0, v0, 0x1

    .line 1229
    :cond_7
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_8

    .line 1230
    add-int/lit8 v0, v0, 0x1

    .line 1232
    :cond_8
    invoke-virtual {p1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1233
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_9

    .line 1234
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v6, "LocalVariableTable"

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v5

    iget-short v5, v5, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1235
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v5

    iget v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVarCount:I

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1236
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v5, v5, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v5, v4, v6}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1238
    :cond_9
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v5, :cond_a

    .line 1239
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v6, "LineNumberTable"

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v5

    iget-short v5, v5, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1240
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v5, v5, Lbsh/org/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v5

    iget v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumberCount:I

    invoke-virtual {v5, v6}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1241
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v5, v5, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    iget-object v6, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v6, v6, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v5, v4, v6}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1244
    .end local v1    # "size":I
    :cond_a
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-lez v1, :cond_b

    .line 1245
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v5, "Exceptions"

    invoke-virtual {v1, v5}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    iget v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1246
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptionCount:I

    if-ge v1, v5, :cond_b

    .line 1248
    iget-object v5, p0, Lbsh/org/objectweb/asm/CodeWriter;->exceptions:[I

    aget v5, v5, v1

    invoke-virtual {p1, v5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    .end local v1    # "i":I
    :cond_b
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_c

    .line 1252
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1254
    :cond_c
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->access:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_d

    .line 1255
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v2, "Deprecated"

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1257
    :cond_d
    return-void
.end method

.method protected resizeInstructions([I[II)[I
    .locals 25
    .param p1, "indexes"    # [I
    .param p2, "sizes"    # [I
    .param p3, "len"    # I

    .line 1301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v4, v4, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 1327
    .local v4, "b":[B
    new-array v5, v3, [I

    .line 1328
    .local v5, "allIndexes":[I
    new-array v6, v3, [I

    .line 1332
    .local v6, "allSizes":[I
    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1333
    invoke-static {v2, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1334
    iget-object v8, v0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v8, v8, Lbsh/org/objectweb/asm/ByteVector;->length:I

    new-array v8, v8, [Z

    .line 1336
    .local v8, "resize":[Z
    const/4 v9, 0x3

    .line 1338
    .local v9, "state":I
    :goto_0
    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1339
    const/4 v9, 0x2

    .line 1341
    :cond_0
    const/4 v11, 0x0

    .line 1342
    .local v11, "u":I
    :goto_1
    array-length v12, v4

    const/16 v14, 0x84

    const/16 v10, 0x8

    const/4 v13, 0x1

    const/4 v15, 0x4

    if-ge v11, v12, :cond_d

    .line 1343
    aget-byte v12, v4, v11

    and-int/lit16 v12, v12, 0xff

    .line 1344
    .local v12, "opcode":I
    const/16 v18, 0x0

    .line 1346
    .local v18, "insert":I
    sget-object v19, Lbsh/org/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v19, v19, v12

    packed-switch v19, :pswitch_data_0

    .line 1443
    :pswitch_0
    add-int/lit8 v11, v11, 0x4

    goto/16 :goto_8

    .line 1419
    :pswitch_1
    add-int/lit8 v10, v11, 0x1

    aget-byte v10, v4, v10

    and-int/lit16 v12, v10, 0xff

    .line 1420
    if-ne v12, v14, :cond_1

    .line 1421
    add-int/lit8 v11, v11, 0x6

    goto/16 :goto_8

    .line 1423
    :cond_1
    add-int/lit8 v11, v11, 0x4

    .line 1425
    goto/16 :goto_8

    .line 1405
    :pswitch_2
    if-ne v9, v13, :cond_2

    .line 1407
    invoke-static {v5, v6, v7, v11}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v14

    .line 1408
    .local v14, "newOffset":I
    and-int/lit8 v15, v14, 0x3

    neg-int v15, v15

    move/from16 v18, v15

    .end local v18    # "insert":I
    .local v15, "insert":I
    goto :goto_2

    .line 1409
    .end local v14    # "newOffset":I
    .end local v15    # "insert":I
    .restart local v18    # "insert":I
    :cond_2
    aget-boolean v14, v8, v11

    if-nez v14, :cond_3

    .line 1411
    and-int/lit8 v18, v11, 0x3

    .line 1412
    aput-boolean v13, v8, v11

    .line 1415
    :cond_3
    :goto_2
    add-int/lit8 v14, v11, 0x4

    and-int/lit8 v15, v11, 0x3

    sub-int/2addr v14, v15

    .line 1416
    .end local v11    # "u":I
    .local v14, "u":I
    add-int/lit8 v11, v14, 0x4

    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v11

    mul-int/2addr v11, v10

    add-int/2addr v11, v10

    add-int/2addr v14, v11

    .line 1417
    move v11, v14

    goto/16 :goto_8

    .line 1384
    .end local v14    # "u":I
    .restart local v11    # "u":I
    :pswitch_3
    if-ne v9, v13, :cond_4

    .line 1391
    invoke-static {v5, v6, v7, v11}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v10

    .line 1392
    .local v10, "newOffset":I
    and-int/lit8 v14, v10, 0x3

    neg-int v14, v14

    move/from16 v18, v14

    .end local v18    # "insert":I
    .local v14, "insert":I
    goto :goto_3

    .line 1393
    .end local v10    # "newOffset":I
    .end local v14    # "insert":I
    .restart local v18    # "insert":I
    :cond_4
    aget-boolean v10, v8, v11

    if-nez v10, :cond_5

    .line 1397
    and-int/lit8 v18, v11, 0x3

    .line 1398
    aput-boolean v13, v8, v11

    .line 1401
    :cond_5
    :goto_3
    add-int/lit8 v10, v11, 0x4

    and-int/lit8 v14, v11, 0x3

    sub-int/2addr v10, v14

    .line 1402
    .end local v11    # "u":I
    .local v10, "u":I
    add-int/lit8 v11, v10, 0x8

    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v11

    add-int/lit8 v14, v10, 0x4

    invoke-static {v4, v14}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v14

    sub-int/2addr v11, v14

    add-int/2addr v11, v13

    mul-int/2addr v11, v15

    add-int/lit8 v11, v11, 0xc

    add-int/2addr v10, v11

    .line 1403
    move v11, v10

    goto :goto_8

    .line 1381
    .end local v10    # "u":I
    .restart local v11    # "u":I
    :pswitch_4
    add-int/lit8 v11, v11, 0x5

    .line 1382
    goto :goto_8

    .line 1352
    :pswitch_5
    const/16 v10, 0xc9

    if-le v12, v10, :cond_7

    .line 1355
    const/16 v10, 0xda

    if-ge v12, v10, :cond_6

    add-int/lit8 v10, v12, -0x31

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v12, -0x14

    .line 1356
    .end local v12    # "opcode":I
    .local v10, "opcode":I
    :goto_4
    add-int/lit8 v12, v11, 0x1

    invoke-static {v4, v12}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v12

    add-int/2addr v12, v11

    .local v12, "label":I
    goto :goto_5

    .line 1358
    .end local v10    # "opcode":I
    .local v12, "opcode":I
    :cond_7
    add-int/lit8 v10, v11, 0x1

    invoke-static {v4, v10}, Lbsh/org/objectweb/asm/CodeWriter;->readShort([BI)S

    move-result v10

    add-int/2addr v10, v11

    move/from16 v24, v12

    move v12, v10

    move/from16 v10, v24

    .line 1360
    .restart local v10    # "opcode":I
    .local v12, "label":I
    :goto_5
    invoke-static {v5, v6, v11, v12}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v14

    .line 1361
    .local v14, "newOffset":I
    const/16 v15, -0x8000

    if-lt v14, v15, :cond_8

    const/16 v15, 0x7fff

    if-le v14, v15, :cond_b

    .line 1362
    :cond_8
    aget-boolean v15, v8, v11

    if-nez v15, :cond_b

    .line 1363
    const/16 v15, 0xa7

    if-eq v10, v15, :cond_a

    const/16 v15, 0xa8

    if-ne v10, v15, :cond_9

    goto :goto_6

    .line 1373
    :cond_9
    const/4 v15, 0x5

    .end local v18    # "insert":I
    .restart local v15    # "insert":I
    goto :goto_7

    .line 1366
    .end local v15    # "insert":I
    .restart local v18    # "insert":I
    :cond_a
    :goto_6
    const/4 v15, 0x2

    .line 1375
    .end local v18    # "insert":I
    .restart local v15    # "insert":I
    :goto_7
    aput-boolean v13, v8, v11

    move/from16 v18, v15

    .line 1378
    .end local v15    # "insert":I
    .restart local v18    # "insert":I
    :cond_b
    add-int/lit8 v11, v11, 0x3

    .line 1379
    move v12, v10

    goto :goto_8

    .line 1439
    .end local v10    # "opcode":I
    .end local v14    # "newOffset":I
    .local v12, "opcode":I
    :pswitch_6
    add-int/lit8 v11, v11, 0x5

    .line 1440
    goto :goto_8

    .line 1436
    :pswitch_7
    add-int/lit8 v11, v11, 0x3

    .line 1437
    goto :goto_8

    .line 1429
    :pswitch_8
    add-int/lit8 v11, v11, 0x2

    .line 1430
    goto :goto_8

    .line 1349
    :pswitch_9
    add-int/lit8 v11, v11, 0x1

    .line 1350
    nop

    .line 1446
    :goto_8
    if-eqz v18, :cond_c

    .line 1448
    array-length v10, v5

    add-int/2addr v10, v13

    new-array v10, v10, [I

    .line 1449
    .local v10, "newIndexes":[I
    array-length v14, v6

    add-int/2addr v14, v13

    new-array v13, v14, [I

    .line 1450
    .local v13, "newSizes":[I
    array-length v14, v5

    invoke-static {v5, v7, v10, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1451
    array-length v14, v6

    invoke-static {v6, v7, v13, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1452
    array-length v14, v5

    aput v11, v10, v14

    .line 1453
    array-length v14, v6

    aput v18, v13, v14

    .line 1454
    move-object v5, v10

    .line 1455
    move-object v6, v13

    .line 1456
    if-lez v18, :cond_c

    .line 1457
    const/4 v9, 0x3

    .line 1460
    .end local v10    # "newIndexes":[I
    .end local v12    # "opcode":I
    .end local v13    # "newSizes":[I
    .end local v18    # "insert":I
    :cond_c
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 1461
    :cond_d
    const/4 v12, 0x3

    if-ge v9, v12, :cond_e

    .line 1462
    add-int/lit8 v9, v9, -0x1

    .line 1464
    :cond_e
    if-nez v9, :cond_22

    .line 1470
    new-instance v12, Lbsh/org/objectweb/asm/ByteVector;

    iget-object v10, v0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v10, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    invoke-direct {v12, v10}, Lbsh/org/objectweb/asm/ByteVector;-><init>(I)V

    move-object v10, v12

    .line 1472
    .local v10, "newCode":Lbsh/org/objectweb/asm/ByteVector;
    const/4 v11, 0x0

    .line 1473
    :goto_9
    iget-object v12, v0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v12, v12, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-ge v11, v12, :cond_1e

    .line 1474
    array-length v12, v5

    sub-int/2addr v12, v13

    .local v12, "i":I
    :goto_a
    if-ltz v12, :cond_11

    .line 1475
    aget v13, v5, v12

    if-ne v13, v11, :cond_10

    .line 1476
    if-ge v12, v3, :cond_10

    .line 1477
    aget v13, v2, v12

    if-lez v13, :cond_f

    .line 1478
    const/4 v13, 0x0

    aget v15, v2, v12

    invoke-virtual {v10, v13, v7, v15}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_b

    .line 1480
    :cond_f
    iget v13, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    aget v15, v2, v12

    add-int/2addr v13, v15

    iput v13, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 1482
    :goto_b
    iget v13, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    aput v13, v1, v12

    .line 1474
    :cond_10
    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x1

    const/4 v15, 0x4

    goto :goto_a

    .line 1486
    :cond_11
    aget-byte v13, v4, v11

    and-int/lit16 v13, v13, 0xff

    .line 1487
    .local v13, "opcode":I
    sget-object v15, Lbsh/org/objectweb/asm/ClassWriter;->TYPE:[B

    aget-byte v15, v15, v13

    packed-switch v15, :pswitch_data_1

    .line 1607
    :pswitch_a
    const/4 v2, 0x3

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    const/4 v3, 0x4

    invoke-virtual {v10, v4, v11, v3}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1608
    add-int/lit8 v11, v11, 0x4

    goto/16 :goto_17

    .line 1578
    :pswitch_b
    add-int/lit8 v15, v11, 0x1

    aget-byte v15, v4, v15

    and-int/lit16 v13, v15, 0xff

    .line 1579
    if-ne v13, v14, :cond_12

    .line 1580
    const/4 v15, 0x6

    invoke-virtual {v10, v4, v11, v15}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1581
    add-int/lit8 v11, v11, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    goto/16 :goto_17

    .line 1583
    :cond_12
    const/4 v15, 0x4

    invoke-virtual {v10, v4, v11, v15}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1584
    add-int/lit8 v11, v11, 0x4

    .line 1586
    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    goto/16 :goto_17

    .line 1557
    :pswitch_c
    move v15, v11

    .line 1558
    .local v15, "v":I
    add-int/lit8 v21, v11, 0x4

    and-int/lit8 v22, v15, 0x3

    sub-int v11, v21, v22

    .line 1560
    iget v14, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 1561
    .local v14, "source":I
    const/16 v7, 0xab

    invoke-virtual {v10, v7}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1562
    :goto_c
    iget v7, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    const/16 v20, 0x4

    rem-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_13

    .line 1563
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_c

    .line 1565
    :cond_13
    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v7

    add-int/2addr v7, v15

    .local v7, "label":I
    add-int/lit8 v11, v11, 0x4

    .line 1566
    invoke-static {v5, v6, v15, v7}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v2

    .line 1567
    .local v2, "newOffset":I
    invoke-virtual {v10, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1568
    move/from16 v23, v2

    .end local v2    # "newOffset":I
    .local v23, "newOffset":I
    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v2

    .local v2, "j":I
    add-int/lit8 v11, v11, 0x4

    .line 1569
    invoke-virtual {v10, v2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1570
    :goto_d
    if-lez v2, :cond_14

    .line 1571
    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v3

    invoke-virtual {v10, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    add-int/lit8 v11, v11, 0x4

    .line 1572
    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v3

    add-int v7, v15, v3

    const/4 v3, 0x4

    add-int/2addr v11, v3

    .line 1573
    invoke-static {v5, v6, v15, v7}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v3

    .line 1574
    .end local v23    # "newOffset":I
    .local v3, "newOffset":I
    invoke-virtual {v10, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1570
    add-int/lit8 v2, v2, -0x1

    move/from16 v23, v3

    move/from16 v3, p3

    goto :goto_d

    .end local v3    # "newOffset":I
    .restart local v23    # "newOffset":I
    :cond_14
    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    goto/16 :goto_17

    .line 1534
    .end local v2    # "j":I
    .end local v7    # "label":I
    .end local v14    # "source":I
    .end local v15    # "v":I
    .end local v23    # "newOffset":I
    :pswitch_d
    move v2, v11

    .line 1535
    .local v2, "v":I
    add-int/lit8 v3, v11, 0x4

    and-int/lit8 v7, v2, 0x3

    sub-int/2addr v3, v7

    .line 1537
    .end local v11    # "u":I
    .local v3, "u":I
    iget v7, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 1538
    .local v7, "source":I
    const/16 v11, 0xaa

    invoke-virtual {v10, v11}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1539
    :goto_e
    iget v11, v10, Lbsh/org/objectweb/asm/ByteVector;->length:I

    const/4 v14, 0x4

    rem-int/2addr v11, v14

    if-eqz v11, :cond_15

    .line 1540
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_e

    .line 1542
    :cond_15
    invoke-static {v4, v3}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v11

    add-int/2addr v11, v2

    .local v11, "label":I
    add-int/2addr v3, v14

    .line 1543
    invoke-static {v5, v6, v2, v11}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v15

    .line 1544
    .local v15, "newOffset":I
    invoke-virtual {v10, v15}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1545
    move/from16 v23, v7

    .end local v7    # "source":I
    .local v23, "source":I
    invoke-static {v4, v3}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v7

    .local v7, "j":I
    add-int/2addr v3, v14

    .line 1546
    invoke-virtual {v10, v7}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1547
    invoke-static {v4, v3}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v20

    sub-int v20, v20, v7

    const/16 v19, 0x1

    add-int/lit8 v7, v20, 0x1

    add-int/2addr v3, v14

    .line 1548
    add-int/lit8 v14, v3, -0x4

    invoke-static {v4, v14}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v14

    invoke-virtual {v10, v14}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1549
    :goto_f
    if-lez v7, :cond_16

    .line 1550
    invoke-static {v4, v3}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v14

    add-int v11, v2, v14

    add-int/lit8 v3, v3, 0x4

    .line 1551
    invoke-static {v5, v6, v2, v11}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v15

    .line 1552
    invoke-virtual {v10, v15}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1549
    add-int/lit8 v7, v7, -0x1

    goto :goto_f

    :cond_16
    move v11, v3

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    goto/16 :goto_17

    .line 1526
    .end local v2    # "v":I
    .end local v3    # "u":I
    .end local v7    # "j":I
    .end local v15    # "newOffset":I
    .end local v23    # "source":I
    .local v11, "u":I
    :pswitch_e
    add-int/lit8 v2, v11, 0x1

    invoke-static {v4, v2}, Lbsh/org/objectweb/asm/CodeWriter;->readInt([BI)I

    move-result v2

    add-int/2addr v2, v11

    .line 1527
    .local v2, "label":I
    invoke-static {v5, v6, v11, v2}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v3

    .line 1528
    .local v3, "newOffset":I
    invoke-virtual {v10, v13}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1529
    invoke-virtual {v10, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1530
    add-int/lit8 v11, v11, 0x5

    .line 1531
    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    goto/16 :goto_17

    .line 1494
    .end local v2    # "label":I
    .end local v3    # "newOffset":I
    :pswitch_f
    const/16 v2, 0xc9

    if-le v13, v2, :cond_18

    .line 1497
    const/16 v2, 0xda

    if-ge v13, v2, :cond_17

    add-int/lit8 v3, v13, -0x31

    goto :goto_10

    :cond_17
    add-int/lit8 v3, v13, -0x14

    :goto_10
    move v13, v3

    .line 1498
    add-int/lit8 v3, v11, 0x1

    invoke-static {v4, v3}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v3

    add-int/2addr v3, v11

    .local v3, "label":I
    goto :goto_11

    .line 1500
    .end local v3    # "label":I
    :cond_18
    const/16 v2, 0xda

    add-int/lit8 v3, v11, 0x1

    invoke-static {v4, v3}, Lbsh/org/objectweb/asm/CodeWriter;->readShort([BI)S

    move-result v3

    add-int/2addr v3, v11

    .line 1502
    .restart local v3    # "label":I
    :goto_11
    invoke-static {v5, v6, v11, v3}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    .line 1503
    .local v7, "newOffset":I
    const/16 v14, -0x8000

    if-lt v7, v14, :cond_1a

    const/16 v15, 0x7fff

    if-le v7, v15, :cond_19

    goto :goto_12

    .line 1520
    :cond_19
    invoke-virtual {v10, v13}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1521
    invoke-virtual {v10, v7}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    const/16 v14, 0x8

    const/16 v16, 0xc9

    const/16 v17, 0x1

    goto :goto_16

    .line 1503
    :cond_1a
    const/16 v15, 0x7fff

    .line 1508
    :goto_12
    const/16 v2, 0xc8

    const/16 v14, 0xa7

    if-ne v13, v14, :cond_1b

    .line 1509
    invoke-virtual {v10, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc9

    const/16 v14, 0xa8

    goto :goto_13

    .line 1510
    :cond_1b
    const/16 v14, 0xa8

    if-ne v13, v14, :cond_1c

    .line 1511
    const/16 v2, 0xc9

    invoke-virtual {v10, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1518
    :goto_13
    move/from16 v16, v2

    const/16 v14, 0x8

    const/16 v17, 0x1

    goto :goto_15

    .line 1513
    :cond_1c
    const/16 v16, 0xc9

    const/16 v14, 0xa6

    if-gt v13, v14, :cond_1d

    add-int/lit8 v14, v13, 0x1

    const/16 v17, 0x1

    xor-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_14

    :cond_1d
    const/16 v17, 0x1

    xor-int/lit8 v14, v13, 0x1

    :goto_14
    invoke-virtual {v10, v14}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1514
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1515
    invoke-virtual {v10, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1516
    add-int/lit8 v7, v7, -0x3

    .line 1518
    :goto_15
    invoke-virtual {v10, v7}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1523
    :goto_16
    add-int/lit8 v11, v11, 0x3

    .line 1524
    const/4 v2, 0x3

    const/4 v3, 0x4

    goto :goto_17

    .line 1602
    .end local v3    # "label":I
    .end local v7    # "newOffset":I
    :pswitch_10
    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    const/4 v2, 0x5

    invoke-virtual {v10, v4, v11, v2}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1603
    add-int/lit8 v11, v11, 0x5

    .line 1604
    const/4 v2, 0x3

    const/4 v3, 0x4

    goto :goto_17

    .line 1598
    :pswitch_11
    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    const/4 v2, 0x3

    invoke-virtual {v10, v4, v11, v2}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1599
    add-int/lit8 v11, v11, 0x3

    .line 1600
    const/4 v3, 0x4

    goto :goto_17

    .line 1590
    :pswitch_12
    const/4 v2, 0x3

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    const/4 v3, 0x2

    invoke-virtual {v10, v4, v11, v3}, Lbsh/org/objectweb/asm/ByteVector;->putByteArray([BII)Lbsh/org/objectweb/asm/ByteVector;

    .line 1591
    add-int/lit8 v11, v11, 0x2

    .line 1592
    const/4 v3, 0x4

    goto :goto_17

    .line 1490
    :pswitch_13
    const/4 v2, 0x3

    const/16 v14, 0x8

    const/16 v15, 0x7fff

    const/16 v16, 0xc9

    const/16 v17, 0x1

    invoke-virtual {v10, v13}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1491
    add-int/lit8 v11, v11, 0x1

    .line 1492
    const/4 v3, 0x4

    .line 1611
    .end local v13    # "opcode":I
    :goto_17
    move-object/from16 v2, p2

    move v15, v3

    move/from16 v13, v17

    const/4 v7, 0x0

    const/16 v14, 0x84

    move/from16 v3, p3

    goto/16 :goto_9

    .line 1615
    .end local v12    # "i":I
    :cond_1e
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_1f

    .line 1616
    iget-object v4, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 1617
    const/4 v2, 0x0

    move v11, v2

    .line 1618
    :goto_18
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-ge v11, v2, :cond_1f

    .line 1619
    nop

    .line 1620
    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v2

    .line 1619
    const/4 v3, 0x0

    invoke-static {v5, v6, v3, v2}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v2

    invoke-static {v4, v11, v2}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    .line 1621
    add-int/lit8 v2, v11, 0x2

    add-int/lit8 v7, v11, 0x2

    .line 1622
    invoke-static {v4, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v7

    .line 1621
    invoke-static {v5, v6, v3, v7}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    invoke-static {v4, v2, v7}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    .line 1623
    add-int/lit8 v2, v11, 0x4

    add-int/lit8 v7, v11, 0x4

    .line 1624
    invoke-static {v4, v7}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v7

    .line 1623
    invoke-static {v5, v6, v3, v7}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    invoke-static {v4, v2, v7}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    .line 1625
    add-int/lit8 v11, v11, 0x8

    goto :goto_18

    .line 1628
    :cond_1f
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_20

    .line 1629
    iget-object v4, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 1630
    const/4 v2, 0x0

    move v11, v2

    .line 1631
    :goto_19
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-ge v11, v2, :cond_20

    .line 1632
    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v2

    .line 1633
    .restart local v2    # "label":I
    const/4 v3, 0x0

    invoke-static {v5, v6, v3, v2}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v7

    .line 1634
    .restart local v7    # "newOffset":I
    invoke-static {v4, v11, v7}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    .line 1635
    add-int/lit8 v12, v11, 0x2

    invoke-static {v4, v12}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v12

    add-int/2addr v2, v12

    .line 1636
    invoke-static {v5, v6, v3, v2}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v12

    sub-int/2addr v12, v7

    .line 1637
    .end local v7    # "newOffset":I
    .local v12, "newOffset":I
    invoke-static {v4, v11, v12}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    .line 1638
    add-int/lit8 v11, v11, 0xa

    goto :goto_19

    .line 1641
    .end local v2    # "label":I
    .end local v12    # "newOffset":I
    :cond_20
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz v2, :cond_21

    .line 1642
    iget-object v4, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    .line 1643
    const/4 v2, 0x0

    move v11, v2

    .line 1644
    :goto_1a
    iget-object v2, v0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    if-ge v11, v2, :cond_21

    .line 1645
    nop

    .line 1646
    invoke-static {v4, v11}, Lbsh/org/objectweb/asm/CodeWriter;->readUnsignedShort([BI)I

    move-result v2

    .line 1645
    const/4 v3, 0x0

    invoke-static {v5, v6, v3, v2}, Lbsh/org/objectweb/asm/CodeWriter;->getNewOffset([I[III)I

    move-result v2

    invoke-static {v4, v11, v2}, Lbsh/org/objectweb/asm/CodeWriter;->writeShort([BII)V

    .line 1647
    add-int/lit8 v11, v11, 0x4

    goto :goto_1a

    .line 1652
    :cond_21
    iput-object v10, v0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    .line 1655
    return-object v1

    .line 1464
    .end local v10    # "newCode":Lbsh/org/objectweb/asm/ByteVector;
    :cond_22
    move v3, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 665
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_9

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 669
    .local v1, "c":C
    const/4 v2, 0x1

    const/4 v3, -0x2

    const/16 v4, 0x4a

    const/16 v5, 0x44

    packed-switch p1, :pswitch_data_0

    .line 681
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_7

    goto :goto_1

    .line 677
    :pswitch_0
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    add-int/2addr v3, v0

    .line 678
    .local v3, "size":I
    goto :goto_2

    .line 674
    .end local v3    # "size":I
    :pswitch_1
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :cond_3
    :goto_0
    add-int/2addr v3, v0

    .line 675
    .restart local v3    # "size":I
    goto :goto_2

    .line 671
    .end local v3    # "size":I
    :pswitch_2
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    if-eq v1, v5, :cond_4

    if-ne v1, v4, :cond_5

    :cond_4
    const/4 v2, 0x2

    :cond_5
    add-int v3, v0, v2

    .line 672
    .restart local v3    # "size":I
    goto :goto_2

    .line 681
    .end local v3    # "size":I
    :cond_6
    :goto_1
    const/4 v3, -0x3

    :cond_7
    add-int/2addr v3, v0

    .line 685
    .restart local v3    # "size":I
    :goto_2
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v3, v0, :cond_8

    .line 686
    iput v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 688
    :cond_8
    iput v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 691
    .end local v1    # "c":C
    .end local v3    # "size":I
    :cond_9
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 692
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 3
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 852
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_0

    .line 854
    add-int/lit8 v0, p1, 0x1

    .line 855
    .local v0, "n":I
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    if-le v0, v1, :cond_0

    .line 856
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    .line 860
    .end local v0    # "n":I
    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x84

    if-gt p1, v0, :cond_2

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_1

    goto :goto_0

    .line 863
    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_1

    .line 861
    :cond_2
    :goto_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 865
    :goto_1
    return-void
.end method

.method public visitInsn(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 561
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_3

    .line 563
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sget-object v1, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 564
    .local v0, "size":I
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_0

    .line 565
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 567
    :cond_0
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 569
    const/16 v1, 0xac

    if-lt p1, v1, :cond_1

    const/16 v1, 0xb1

    if-le p1, v1, :cond_2

    :cond_1
    const/16 v1, 0xbf

    if-ne p1, v1, :cond_3

    .line 572
    :cond_2
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v1, :cond_3

    .line 573
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v2, v1, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    .line 574
    const/4 v1, 0x0

    iput-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    .line 579
    .end local v0    # "size":I
    :cond_3
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 580
    return-void
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 583
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    .line 586
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    .line 587
    .local v0, "size":I
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_0

    .line 588
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 590
    :cond_0
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 593
    .end local v0    # "size":I
    :cond_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    .line 594
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_0

    .line 596
    :cond_2
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 598
    :goto_0
    return-void
.end method

.method public visitJumpInsn(ILbsh/org/objectweb/asm/Label;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "label"    # Lbsh/org/objectweb/asm/Label;

    .line 753
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    const/16 v1, 0xa8

    const/16 v2, 0xa7

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 754
    if-ne p1, v2, :cond_0

    .line 756
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    .line 757
    iget v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v4, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    .line 758
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    goto :goto_0

    .line 761
    :cond_0
    if-ne p1, v1, :cond_1

    .line 762
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    .line 763
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    goto :goto_0

    .line 768
    :cond_1
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sget-object v4, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    aget v4, v4, p1

    add-int/2addr v0, v4

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 769
    iget-object v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v4, :cond_2

    .line 770
    invoke-direct {p0, v0, p2}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    .line 775
    :cond_2
    :goto_0
    iget-boolean v0, p2, Lbsh/org/objectweb/asm/Label;->resolved:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lbsh/org/objectweb/asm/Label;->position:I

    iget-object v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v4, v4, Lbsh/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v0, v4

    const/16 v4, -0x8000

    if-ge v0, v4, :cond_6

    .line 781
    const/16 v0, 0xc8

    if-ne p1, v2, :cond_3

    .line 782
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2

    .line 783
    :cond_3
    if-ne p1, v1, :cond_4

    .line 784
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2

    .line 786
    :cond_4
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xa6

    if-gt p1, v2, :cond_5

    add-int/lit8 v2, p1, 0x1

    xor-int/2addr v2, v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_5
    xor-int/lit8 v2, p1, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 787
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 788
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 790
    :goto_2
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v1, v3

    invoke-virtual {p2, p0, v0, v1, v3}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    goto :goto_3

    .line 795
    :cond_6
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 796
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v1, v2}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    .line 798
    :goto_3
    return-void
.end method

.method public visitLabel(Lbsh/org/objectweb/asm/Label;)V
    .locals 3
    .param p1, "label"    # Lbsh/org/objectweb/asm/Label;

    .line 808
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_0

    .line 811
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v1, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    .line 812
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    .line 816
    :cond_0
    iput-object p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 818
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 821
    :cond_1
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->resize:Z

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, v1, Lbsh/org/objectweb/asm/ByteVector;->length:I

    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v2, v2, Lbsh/org/objectweb/asm/ByteVector;->data:[B

    invoke-virtual {p1, p0, v1, v2}, Lbsh/org/objectweb/asm/Label;->resolve(Lbsh/org/objectweb/asm/CodeWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->resize:Z

    .line 822
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 5
    .param p1, "cst"    # Ljava/lang/Object;

    .line 825
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newCst(Ljava/lang/Object;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 826
    .local v0, "i":Lbsh/org/objectweb/asm/Item;
    iget-boolean v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v1, :cond_3

    .line 829
    iget v1, v0, Lbsh/org/objectweb/asm/Item;->type:I

    if-eq v1, v3, :cond_1

    iget v1, v0, Lbsh/org/objectweb/asm/Item;->type:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 832
    :cond_0
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "size":I
    goto :goto_1

    .line 830
    .end local v1    # "size":I
    :cond_1
    :goto_0
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v1, v1, 0x2

    .line 835
    .restart local v1    # "size":I
    :goto_1
    iget v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v1, v4, :cond_2

    .line 836
    iput v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 838
    :cond_2
    iput v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 841
    .end local v1    # "size":I
    :cond_3
    iget-short v1, v0, Lbsh/org/objectweb/asm/Item;->index:S

    .line 842
    .local v1, "index":I
    iget v4, v0, Lbsh/org/objectweb/asm/Item;->type:I

    if-eq v4, v3, :cond_6

    iget v3, v0, Lbsh/org/objectweb/asm/Item;->type:I

    if-ne v3, v2, :cond_4

    goto :goto_2

    .line 844
    :cond_4
    const/16 v2, 0x100

    if-lt v1, v2, :cond_5

    .line 845
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_3

    .line 847
    :cond_5
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v1}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_3

    .line 843
    :cond_6
    :goto_2
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 849
    :goto_3
    return-void
.end method

.method public visitLineNumber(ILbsh/org/objectweb/asm/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lbsh/org/objectweb/asm/Label;

    .line 1062
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LineNumberTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 1064
    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    .line 1066
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumberCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumberCount:I

    .line 1067
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p2, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1068
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->lineNumber:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1069
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "start"    # Lbsh/org/objectweb/asm/Label;
    .param p4, "end"    # Lbsh/org/objectweb/asm/Label;
    .param p5, "index"    # I

    .line 1044
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    const-string v1, "LocalVariableTable"

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    .line 1046
    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    .line 1048
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVarCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVarCount:I

    .line 1049
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p3, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1050
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p4, Lbsh/org/objectweb/asm/Label;->position:I

    iget v2, p3, Lbsh/org/objectweb/asm/Label;->position:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1051
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1052
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newUTF8(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1053
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->localVar:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p5}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 1054
    return-void
.end method

.method public visitLookupSwitchInsn(Lbsh/org/objectweb/asm/Label;[I[Lbsh/org/objectweb/asm/Label;)V
    .locals 5
    .param p1, "dflt"    # Lbsh/org/objectweb/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lbsh/org/objectweb/asm/Label;

    .line 904
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 906
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 908
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_1

    .line 909
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v2, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    .line 910
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    .line 911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 912
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    aget-object v3, p3, v0

    invoke-direct {p0, v2, v3}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 914
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    .line 918
    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 919
    .local v0, "source":I
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 920
    :goto_1
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 921
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_1

    .line 923
    :cond_2
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p1, p0, v2, v0, v1}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    .line 924
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 925
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 926
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    aget v4, p2, v2

    invoke-virtual {v3, v4}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 927
    aget-object v3, p3, v2

    iget-object v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v1}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 929
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public visitMaxs(II)V
    .locals 7
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 976
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_5

    .line 978
    const/4 v0, 0x0

    .line 986
    .local v0, "max":I
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    .line 987
    .local v1, "stack":Lbsh/org/objectweb/asm/Label;
    :goto_0
    if-eqz v1, :cond_3

    .line 989
    move-object v2, v1

    .line 990
    .local v2, "l":Lbsh/org/objectweb/asm/Label;
    iget-object v1, v1, Lbsh/org/objectweb/asm/Label;->next:Lbsh/org/objectweb/asm/Label;

    .line 992
    iget v3, v2, Lbsh/org/objectweb/asm/Label;->beginStackSize:I

    .line 993
    .local v3, "start":I
    iget v4, v2, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    add-int/2addr v4, v3

    .line 995
    .local v4, "blockMax":I
    if-le v4, v0, :cond_0

    .line 996
    move v0, v4

    .line 999
    :cond_0
    iget-object v5, v2, Lbsh/org/objectweb/asm/Label;->successors:Lbsh/org/objectweb/asm/Edge;

    .line 1000
    .local v5, "b":Lbsh/org/objectweb/asm/Edge;
    :goto_1
    if-eqz v5, :cond_2

    .line 1001
    iget-object v2, v5, Lbsh/org/objectweb/asm/Edge;->successor:Lbsh/org/objectweb/asm/Label;

    .line 1003
    iget-boolean v6, v2, Lbsh/org/objectweb/asm/Label;->pushed:Z

    if-nez v6, :cond_1

    .line 1005
    iget v6, v5, Lbsh/org/objectweb/asm/Edge;->stackSize:I

    add-int/2addr v6, v3

    iput v6, v2, Lbsh/org/objectweb/asm/Label;->beginStackSize:I

    .line 1007
    const/4 v6, 0x1

    iput-boolean v6, v2, Lbsh/org/objectweb/asm/Label;->pushed:Z

    .line 1008
    iput-object v1, v2, Lbsh/org/objectweb/asm/Label;->next:Lbsh/org/objectweb/asm/Label;

    .line 1009
    move-object v1, v2

    .line 1011
    :cond_1
    iget-object v5, v5, Lbsh/org/objectweb/asm/Edge;->next:Lbsh/org/objectweb/asm/Edge;

    goto :goto_1

    .line 1013
    .end local v2    # "l":Lbsh/org/objectweb/asm/Label;
    .end local v3    # "start":I
    .end local v4    # "blockMax":I
    .end local v5    # "b":Lbsh/org/objectweb/asm/Edge;
    :cond_2
    goto :goto_0

    .line 1014
    :cond_3
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStack:I

    .line 1016
    sget-object v2, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    monitor-enter v2

    .line 1018
    :try_start_0
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->tail:Lbsh/org/objectweb/asm/Edge;

    if-eqz v3, :cond_4

    .line 1019
    sget-object v4, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    iput-object v4, v3, Lbsh/org/objectweb/asm/Edge;->poolNext:Lbsh/org/objectweb/asm/Edge;

    .line 1020
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->head:Lbsh/org/objectweb/asm/Edge;

    sput-object v3, Lbsh/org/objectweb/asm/CodeWriter;->pool:Lbsh/org/objectweb/asm/Edge;

    .line 1022
    :cond_4
    monitor-exit v2

    .line 1023
    .end local v0    # "max":I
    .end local v1    # "stack":Lbsh/org/objectweb/asm/Label;
    goto :goto_2

    .line 1022
    .restart local v0    # "max":I
    .restart local v1    # "stack":Lbsh/org/objectweb/asm/Label;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1024
    .end local v0    # "max":I
    .end local v1    # "stack":Lbsh/org/objectweb/asm/Label;
    :cond_5
    iput p1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStack:I

    .line 1025
    iput p2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    .line 1027
    :goto_2
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 701
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    .line 702
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newItfMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    .local v1, "i":Lbsh/org/objectweb/asm/Item;
    goto :goto_0

    .line 704
    .end local v1    # "i":Lbsh/org/objectweb/asm/Item;
    :cond_0
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    .line 706
    .restart local v1    # "i":Lbsh/org/objectweb/asm/Item;
    :goto_0
    iget v2, v1, Lbsh/org/objectweb/asm/Item;->intVal:I

    .line 707
    .local v2, "argSize":I
    iget-boolean v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v3, :cond_4

    .line 713
    if-nez v2, :cond_1

    .line 715
    invoke-static {p4}, Lbsh/org/objectweb/asm/CodeWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v2

    .line 717
    iput v2, v1, Lbsh/org/objectweb/asm/Item;->intVal:I

    .line 720
    :cond_1
    const/16 v3, 0xb8

    if-ne p1, v3, :cond_2

    .line 721
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    shr-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .local v3, "size":I
    goto :goto_1

    .line 723
    .end local v3    # "size":I
    :cond_2
    iget v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    shr-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x3

    add-int/2addr v3, v4

    .line 726
    .restart local v3    # "size":I
    :goto_1
    iget v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v3, v4, :cond_3

    .line 727
    iput v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 729
    :cond_3
    iput v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 732
    .end local v3    # "size":I
    :cond_4
    if-ne p1, v0, :cond_6

    .line 733
    iget-boolean v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-nez v3, :cond_5

    .line 734
    if-nez v2, :cond_5

    .line 735
    invoke-static {p4}, Lbsh/org/objectweb/asm/CodeWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v2

    .line 736
    iput v2, v1, Lbsh/org/objectweb/asm/Item;->intVal:I

    .line 739
    :cond_5
    iget-object v3, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-short v4, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v3, v0, v4}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    shr-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_2

    .line 741
    :cond_6
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-short v3, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, p1, v3}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 743
    :goto_2
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 4
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 932
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_0

    .line 935
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    rsub-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 938
    :cond_0
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v0, p1}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v0

    .line 939
    .local v0, "classItem":Lbsh/org/objectweb/asm/Item;
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v2, 0xc5

    iget-short v3, v0, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v1, v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 940
    return-void
.end method

.method public visitTableSwitchInsn(IILbsh/org/objectweb/asm/Label;[Lbsh/org/objectweb/asm/Label;)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lbsh/org/objectweb/asm/Label;
    .param p4, "labels"    # [Lbsh/org/objectweb/asm/Label;

    .line 873
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 875
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 877
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_1

    .line 878
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v2, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    .line 879
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    invoke-direct {p0, v0, p3}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    .line 880
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 881
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    aget-object v3, p4, v0

    invoke-direct {p0, v2, v3}, Lbsh/org/objectweb/asm/CodeWriter;->addSuccessor(ILbsh/org/objectweb/asm/Label;)V

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    .line 887
    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v0, v0, Lbsh/org/objectweb/asm/ByteVector;->length:I

    .line 888
    .local v0, "source":I
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v3, 0xaa

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 889
    :goto_1
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget v2, v2, Lbsh/org/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 890
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_1

    .line 892
    :cond_2
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {p3, p0, v2, v0, v1}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    .line 893
    iget-object v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v2, p1}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lbsh/org/objectweb/asm/ByteVector;->put4(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 894
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p4

    if-ge v2, v3, :cond_3

    .line 895
    aget-object v3, p4, v2

    iget-object v4, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v1}, Lbsh/org/objectweb/asm/Label;->put(Lbsh/org/objectweb/asm/CodeWriter;Lbsh/org/objectweb/asm/ByteVector;IZ)V

    .line 894
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 897
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public visitTryCatchBlock(Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;Lbsh/org/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lbsh/org/objectweb/asm/Label;
    .param p2, "end"    # Lbsh/org/objectweb/asm/Label;
    .param p3, "handler"    # Lbsh/org/objectweb/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 956
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 958
    iget-boolean v0, p3, Lbsh/org/objectweb/asm/Label;->pushed:Z

    if-nez v0, :cond_0

    .line 959
    iput v1, p3, Lbsh/org/objectweb/asm/Label;->beginStackSize:I

    .line 960
    iput-boolean v1, p3, Lbsh/org/objectweb/asm/Label;->pushed:Z

    .line 961
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    iput-object v0, p3, Lbsh/org/objectweb/asm/Label;->next:Lbsh/org/objectweb/asm/Label;

    .line 962
    iput-object p3, p0, Lbsh/org/objectweb/asm/CodeWriter;->blockStack:Lbsh/org/objectweb/asm/Label;

    .line 965
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchCount:I

    .line 966
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    if-nez v0, :cond_1

    .line 967
    new-instance v0, Lbsh/org/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lbsh/org/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    .line 969
    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p1, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 970
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p2, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 971
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    iget v1, p3, Lbsh/org/objectweb/asm/Label;->position:I

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 972
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->catchTable:Lbsh/org/objectweb/asm/ByteVector;

    if-eqz p4, :cond_2

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p4}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put2(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 973
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 646
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 649
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    .line 650
    .local v0, "size":I
    iget v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v1, :cond_0

    .line 651
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 653
    :cond_0
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 656
    .end local v0    # "size":I
    :cond_1
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->cw:Lbsh/org/objectweb/asm/ClassWriter;

    invoke-virtual {v1, p2}, Lbsh/org/objectweb/asm/ClassWriter;->newClass(Ljava/lang/String;)Lbsh/org/objectweb/asm/Item;

    move-result-object v1

    iget-short v1, v1, Lbsh/org/objectweb/asm/Item;->index:S

    invoke-virtual {v0, p1, v1}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 657
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 601
    iget-boolean v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->computeMaxs:Z

    const/16 v1, 0xa9

    if-eqz v0, :cond_5

    .line 603
    if-ne p1, v1, :cond_0

    .line 605
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    if-eqz v0, :cond_2

    .line 606
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    iput v2, v0, Lbsh/org/objectweb/asm/Label;->maxStackSize:I

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->currentBlock:Lbsh/org/objectweb/asm/Label;

    goto :goto_0

    .line 610
    :cond_0
    iget v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    sget-object v2, Lbsh/org/objectweb/asm/CodeWriter;->SIZE:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    .line 611
    .local v0, "size":I
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    if-le v0, v2, :cond_1

    .line 612
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxStackSize:I

    .line 614
    :cond_1
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->stackSize:I

    .line 618
    .end local v0    # "size":I
    :cond_2
    :goto_0
    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x37

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 623
    :cond_3
    add-int/lit8 v0, p2, 0x1

    .local v0, "n":I
    goto :goto_2

    .line 621
    .end local v0    # "n":I
    :cond_4
    :goto_1
    add-int/lit8 v0, p2, 0x2

    .line 625
    .restart local v0    # "n":I
    :goto_2
    iget v2, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    if-le v0, v2, :cond_5

    .line 626
    iput v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->maxLocals:I

    .line 630
    .end local v0    # "n":I
    :cond_5
    const/4 v0, 0x4

    if-ge p2, v0, :cond_7

    if-eq p1, v1, :cond_7

    .line 632
    const/16 v0, 0x36

    if-ge p1, v0, :cond_6

    .line 633
    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    .local v0, "opt":I
    goto :goto_3

    .line 635
    .end local v0    # "opt":I
    :cond_6
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    .line 637
    .restart local v0    # "opt":I
    :goto_3
    iget-object v1, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v1, v0}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    .line 638
    .end local v0    # "opt":I
    goto :goto_4

    :cond_7
    const/16 v0, 0x100

    if-lt p2, v0, :cond_8

    .line 639
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lbsh/org/objectweb/asm/ByteVector;->put1(I)Lbsh/org/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put12(II)Lbsh/org/objectweb/asm/ByteVector;

    goto :goto_4

    .line 641
    :cond_8
    iget-object v0, p0, Lbsh/org/objectweb/asm/CodeWriter;->code:Lbsh/org/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lbsh/org/objectweb/asm/ByteVector;->put11(II)Lbsh/org/objectweb/asm/ByteVector;

    .line 643
    :goto_4
    return-void
.end method
