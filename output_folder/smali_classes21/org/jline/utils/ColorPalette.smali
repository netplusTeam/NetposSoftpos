.class public Lorg/jline/utils/ColorPalette;
.super Ljava/lang/Object;
.source "ColorPalette.java"


# static fields
.field public static final DEFAULT:Lorg/jline/utils/ColorPalette;

.field public static final XTERM_INITC:Ljava/lang/String; = "\\E]4;%p1%d;rgb\\:%p2%{255}%*%{1000}%/%2.2X/%p3%{255}%*%{1000}%/%2.2X/%p4%{255}%*%{1000}%/%2.2X\\E\\\\"


# instance fields
.field private distance:Lorg/jline/utils/Colors$Distance;

.field private distanceName:Ljava/lang/String;

.field private osc4:Z

.field private palette:[I

.field private final terminal:Lorg/jline/terminal/Terminal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/jline/utils/ColorPalette;

    invoke-direct {v0}, Lorg/jline/utils/ColorPalette;-><init>()V

    sput-object v0, Lorg/jline/utils/ColorPalette;->DEFAULT:Lorg/jline/utils/ColorPalette;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    .line 36
    iput-object v0, p0, Lorg/jline/utils/ColorPalette;->distanceName:Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    iput-object v0, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jline/utils/ColorPalette;-><init>(Lorg/jline/terminal/Terminal;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/jline/terminal/Terminal;Ljava/lang/String;)V
    .locals 1
    .param p1, "terminal"    # Lorg/jline/terminal/Terminal;
    .param p2, "distance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    .line 46
    iput-object p2, p0, Lorg/jline/utils/ColorPalette;->distanceName:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/utils/ColorPalette;->loadPalette(Z)V

    .line 48
    return-void
.end method

.method private static doLoad(Lorg/jline/terminal/Terminal;)[I
    .locals 26
    .param p0, "terminal"    # Lorg/jline/terminal/Terminal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-interface/range {p0 .. p0}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v0

    .line 178
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-interface/range {p0 .. p0}, Lorg/jline/terminal/Terminal;->reader()Lorg/jline/utils/NonBlockingReader;

    move-result-object v1

    .line 180
    .local v1, "reader":Lorg/jline/utils/NonBlockingReader;
    const/16 v2, 0x100

    new-array v2, v2, [I

    .line 181
    .local v2, "palette":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v3, v5, :cond_19

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    .local v6, "req":Ljava/lang/StringBuilder;
    const-string v7, "\u001b]4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/16 v8, 0x3b

    if-ge v7, v5, :cond_0

    .line 185
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    mul-int/lit8 v9, v3, 0x10

    add-int/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 187
    .end local v7    # "j":I
    :cond_0
    const-string v7, "\u001b\\"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 191
    const/4 v7, 0x1

    .line 192
    .local v7, "black":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v5, :cond_17

    .line 193
    const-wide/16 v10, 0x32

    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->peek(J)I

    move-result v10

    if-gez v10, :cond_1

    .line 194
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    goto/16 :goto_b

    .line 196
    :cond_1
    const-wide/16 v10, 0xa

    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v12

    const/16 v13, 0x1b

    const/4 v14, 0x0

    if-ne v12, v13, :cond_16

    .line 197
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v12

    const/16 v15, 0x5d

    if-ne v12, v15, :cond_15

    .line 198
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v12

    const/16 v15, 0x34

    if-ne v12, v15, :cond_14

    .line 199
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v12

    if-eq v12, v8, :cond_2

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    goto/16 :goto_a

    .line 202
    :cond_2
    const/4 v12, 0x0

    .line 205
    .local v12, "idx":I
    :goto_3
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v15

    .line 206
    .local v15, "c":I
    const/16 v4, 0x39

    const/16 v13, 0x30

    if-lt v15, v13, :cond_3

    if-gt v15, v4, :cond_3

    .line 207
    mul-int/lit8 v4, v12, 0xa

    add-int/lit8 v13, v15, -0x30

    add-int v12, v4, v13

    const/16 v13, 0x1b

    goto :goto_3

    .line 208
    :cond_3
    if-ne v15, v8, :cond_13

    .line 209
    nop

    .line 214
    const/16 v8, 0xff

    if-le v12, v8, :cond_4

    .line 215
    return-object v14

    .line 217
    :cond_4
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v8

    const/16 v4, 0x72

    if-ne v8, v4, :cond_12

    .line 218
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v4

    const/16 v8, 0x67

    if-ne v4, v8, :cond_11

    .line 219
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v4

    const/16 v8, 0x62

    if-ne v4, v8, :cond_10

    .line 220
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v4

    const/16 v8, 0x3a

    if-eq v4, v8, :cond_5

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move/from16 v20, v12

    goto/16 :goto_9

    .line 223
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v8, "rgb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v15

    .line 227
    const/4 v13, 0x7

    if-ne v15, v13, :cond_6

    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    goto :goto_5

    .line 230
    :cond_6
    const/16 v13, 0x1b

    if-ne v15, v13, :cond_a

    .line 231
    invoke-virtual {v1, v10, v11}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v15

    .line 232
    const/16 v10, 0x5c

    if-ne v15, v10, :cond_9

    .line 233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    nop

    .line 245
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_7

    .line 246
    return-object v14

    .line 248
    :cond_7
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    int-to-double v13, v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    const/4 v11, 0x1

    shl-int v10, v11, v10

    move-object/from16 v19, v6

    .end local v6    # "req":Ljava/lang/StringBuilder;
    .local v19, "req":Ljava/lang/StringBuilder;
    int-to-double v5, v10

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v5, v5, v17

    div-double/2addr v13, v5

    .line 249
    .local v13, "r":D
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    shl-int v10, v11, v10

    move/from16 v20, v12

    .end local v12    # "idx":I
    .local v20, "idx":I
    int-to-double v11, v10

    sub-double v11, v11, v17

    div-double/2addr v5, v11

    .line 250
    .local v5, "g":D
    const/4 v10, 0x2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    int-to-double v11, v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x4

    const/16 v21, 0x1

    shl-int v10, v21, v10

    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .local v22, "writer":Ljava/io/PrintWriter;
    .local v23, "reader":Lorg/jline/utils/NonBlockingReader;
    int-to-double v0, v10

    sub-double v0, v0, v17

    div-double/2addr v11, v0

    .line 251
    .local v11, "b":D
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double v17, v13, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    const/16 v16, 0x10

    shl-long v17, v17, v16

    mul-double v24, v5, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    const/16 v10, 0x8

    shl-long v24, v24, v10

    add-long v17, v17, v24

    mul-double/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long v0, v17, v0

    long-to-int v0, v0

    aput v0, v2, v20

    .line 252
    aget v0, v2, v20

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    const/16 v21, 0x0

    :goto_6
    and-int v7, v7, v21

    .line 192
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "g":D
    .end local v8    # "rgb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "b":D
    .end local v13    # "r":D
    .end local v15    # "c":I
    .end local v20    # "idx":I
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    move-object/from16 v6, v19

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    const/16 v8, 0x3b

    goto/16 :goto_2

    .line 236
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v8    # "rgb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "idx":I
    .restart local v15    # "c":I
    :cond_9
    return-object v14

    .line 238
    :cond_a
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move/from16 v16, v5

    move-object/from16 v19, v6

    move/from16 v20, v12

    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .end local v12    # "idx":I
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v20    # "idx":I
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    const/16 v0, 0x30

    if-lt v15, v0, :cond_b

    const/16 v1, 0x39

    if-le v15, v1, :cond_d

    goto :goto_7

    :cond_b
    const/16 v1, 0x39

    :goto_7
    const/16 v5, 0x41

    if-lt v15, v5, :cond_c

    const/16 v5, 0x5a

    if-le v15, v5, :cond_d

    :cond_c
    const/16 v5, 0x61

    if-lt v15, v5, :cond_e

    const/16 v5, 0x7a

    if-gt v15, v5, :cond_e

    .line 239
    :cond_d
    int-to-char v5, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 240
    :cond_e
    const/16 v5, 0x2f

    if-ne v15, v5, :cond_f

    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    :cond_f
    :goto_8
    move v13, v0

    move/from16 v5, v16

    move-object/from16 v6, v19

    move/from16 v12, v20

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    goto/16 :goto_4

    .line 219
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "rgb":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v20    # "idx":I
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v12    # "idx":I
    :cond_10
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move/from16 v20, v12

    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .end local v12    # "idx":I
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v20    # "idx":I
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    goto :goto_9

    .line 218
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v20    # "idx":I
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v12    # "idx":I
    :cond_11
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move/from16 v20, v12

    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .end local v12    # "idx":I
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v20    # "idx":I
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    goto :goto_9

    .line 217
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v20    # "idx":I
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v12    # "idx":I
    :cond_12
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    move/from16 v20, v12

    .line 221
    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .end local v12    # "idx":I
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v20    # "idx":I
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    :goto_9
    return-object v14

    .line 211
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v20    # "idx":I
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v12    # "idx":I
    :cond_13
    return-object v14

    .line 198
    .end local v12    # "idx":I
    .end local v15    # "c":I
    :cond_14
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    goto :goto_a

    .line 197
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    :cond_15
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    goto :goto_a

    .line 196
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    :cond_16
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    .line 200
    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    :goto_a
    return-object v14

    .line 192
    .end local v19    # "req":Ljava/lang/StringBuilder;
    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v6    # "req":Ljava/lang/StringBuilder;
    :cond_17
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v19, v6

    .line 254
    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v6    # "req":Ljava/lang/StringBuilder;
    .end local v9    # "j":I
    .restart local v19    # "req":Ljava/lang/StringBuilder;
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    :goto_b
    if-eqz v7, :cond_18

    .line 255
    goto :goto_c

    .line 181
    .end local v7    # "black":Z
    .end local v19    # "req":Ljava/lang/StringBuilder;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    goto/16 :goto_0

    .end local v22    # "writer":Ljava/io/PrintWriter;
    .end local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    .restart local v0    # "writer":Ljava/io/PrintWriter;
    .restart local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    :cond_19
    move-object/from16 v22, v0

    move-object/from16 v23, v1

    .line 258
    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local v1    # "reader":Lorg/jline/utils/NonBlockingReader;
    .end local v3    # "i":I
    .restart local v22    # "writer":Ljava/io/PrintWriter;
    .restart local v23    # "reader":Lorg/jline/utils/NonBlockingReader;
    :goto_c
    const/16 v0, 0x100

    .line 259
    .local v0, "max":I
    :goto_d
    if-lez v0, :cond_1a

    add-int/lit8 v0, v0, -0x1

    aget v1, v2, v0

    if-nez v1, :cond_1a

    goto :goto_d

    .line 260
    :cond_1a
    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public canChange()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->can_change:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v0, v1}, Lorg/jline/terminal/Terminal;->getBooleanCapability(Lorg/jline/utils/InfoCmp$Capability;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "index"    # I

    .line 127
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getDist()Lorg/jline/utils/Colors$Distance;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->distance:Lorg/jline/utils/Colors$Distance;

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->distanceName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jline/utils/Colors;->getDistance(Ljava/lang/String;)Lorg/jline/utils/Colors$Distance;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/ColorPalette;->distance:Lorg/jline/utils/Colors$Distance;

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->distance:Lorg/jline/utils/Colors$Distance;

    return-object v0
.end method

.method public getDistanceName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->distanceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    array-length v0, v0

    return v0
.end method

.method public isReal()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/jline/utils/ColorPalette;->osc4:Z

    return v0
.end method

.method protected loadPalette(Z)V
    .locals 6
    .param p1, "doLoad"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 90
    if-eqz p1, :cond_0

    invoke-static {v0}, Lorg/jline/utils/ColorPalette;->doLoad(Lorg/jline/terminal/Terminal;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    .local v0, "pal":[I
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    iput-object v0, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jline/utils/ColorPalette;->osc4:Z

    goto :goto_2

    .line 95
    :cond_1
    iget-object v2, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v3, Lorg/jline/utils/InfoCmp$Capability;->max_colors:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v2, v3}, Lorg/jline/terminal/Terminal;->getNumericCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    .local v2, "cols":Ljava/lang/Integer;
    const/16 v3, 0x100

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lorg/jline/utils/Colors;->DEFAULT_COLORS_88:[I

    array-length v5, v5

    if-ne v4, v5, :cond_2

    .line 98
    sget-object v3, Lorg/jline/utils/Colors;->DEFAULT_COLORS_88:[I

    iput-object v3, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    goto :goto_1

    .line 100
    :cond_2
    sget-object v4, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    goto :goto_1

    .line 103
    :cond_3
    sget-object v4, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    .line 105
    :goto_1
    iput-boolean v1, p0, Lorg/jline/utils/ColorPalette;->osc4:Z

    .line 107
    .end local v0    # "pal":[I
    .end local v2    # "cols":Ljava/lang/Integer;
    :goto_2
    goto :goto_3

    .line 108
    :cond_4
    sget-object v0, Lorg/jline/utils/Colors;->DEFAULT_COLORS_256:[I

    iput-object v0, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    .line 109
    iput-boolean v1, p0, Lorg/jline/utils/ColorPalette;->osc4:Z

    .line 111
    :goto_3
    return-void
.end method

.method public loadPalette()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Lorg/jline/utils/ColorPalette;->osc4:Z

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/utils/ColorPalette;->loadPalette(Z)V

    .line 85
    :cond_0
    iget-boolean v0, p0, Lorg/jline/utils/ColorPalette;->osc4:Z

    return v0
.end method

.method public round(I)I
    .locals 4
    .param p1, "col"    # I

    .line 163
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 164
    sget-object v0, Lorg/jline/utils/ColorPalette;->DEFAULT:Lorg/jline/utils/ColorPalette;

    invoke-virtual {v0, p1}, Lorg/jline/utils/ColorPalette;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    array-length v2, v1

    invoke-virtual {p0}, Lorg/jline/utils/ColorPalette;->getDist()Lorg/jline/utils/Colors$Distance;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jline/utils/Colors;->roundColor(I[IILorg/jline/utils/Colors$Distance;)I

    move-result p1

    .line 166
    :cond_0
    return p1
.end method

.method public round(III)I
    .locals 4
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 159
    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    array-length v2, v1

    invoke-virtual {p0}, Lorg/jline/utils/ColorPalette;->getDist()Lorg/jline/utils/Colors$Distance;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jline/utils/Colors;->roundColor(I[IILorg/jline/utils/Colors$Distance;)I

    move-result v0

    return v0
.end method

.method public setColor(II)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "color"    # I

    .line 136
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->palette:[I

    aput p2, v0, p1

    .line 137
    invoke-virtual {p0}, Lorg/jline/utils/ColorPalette;->canChange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    sget-object v1, Lorg/jline/utils/InfoCmp$Capability;->initialize_color:Lorg/jline/utils/InfoCmp$Capability;

    invoke-interface {v0, v1}, Lorg/jline/terminal/Terminal;->getStringCapability(Lorg/jline/utils/InfoCmp$Capability;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "initc":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lorg/jline/utils/ColorPalette;->osc4:Z

    if-eqz v1, :cond_2

    .line 141
    :cond_0
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 142
    .local v1, "r":I
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 143
    .local v3, "g":I
    and-int/lit16 v4, p2, 0xff

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 144
    .local v4, "b":I
    if-nez v0, :cond_1

    .line 146
    const-string v0, "\\E]4;%p1%d;rgb\\:%p2%{255}%*%{1000}%/%2.2X/%p3%{255}%*%{1000}%/%2.2X/%p4%{255}%*%{1000}%/%2.2X\\E\\\\"

    .line 148
    :cond_1
    iget-object v5, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v5}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v0, v6}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v2, p0, Lorg/jline/utils/ColorPalette;->terminal:Lorg/jline/terminal/Terminal;

    invoke-interface {v2}, Lorg/jline/terminal/Terminal;->writer()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 152
    .end local v0    # "initc":Ljava/lang/String;
    .end local v1    # "r":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    :cond_2
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/jline/utils/ColorPalette;->distanceName:Ljava/lang/String;

    .line 64
    return-void
.end method
