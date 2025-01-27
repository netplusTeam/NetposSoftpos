.class public final Ljavassist/bytecode/ConstPool;
.super Ljava/lang/Object;
.source "ConstPool.java"


# static fields
.field public static final CONST_Class:I = 0x7

.field public static final CONST_Double:I = 0x6

.field public static final CONST_Dynamic:I = 0x11

.field public static final CONST_DynamicCallSite:I = 0x12

.field public static final CONST_Fieldref:I = 0x9

.field public static final CONST_Float:I = 0x4

.field public static final CONST_Integer:I = 0x3

.field public static final CONST_InterfaceMethodref:I = 0xb

.field public static final CONST_InvokeDynamic:I = 0x12

.field public static final CONST_Long:I = 0x5

.field public static final CONST_MethodHandle:I = 0xf

.field public static final CONST_MethodType:I = 0x10

.field public static final CONST_Methodref:I = 0xa

.field public static final CONST_Module:I = 0x13

.field public static final CONST_NameAndType:I = 0xc

.field public static final CONST_Package:I = 0x14

.field public static final CONST_String:I = 0x8

.field public static final CONST_Utf8:I = 0x1

.field public static final REF_getField:I = 0x1

.field public static final REF_getStatic:I = 0x2

.field public static final REF_invokeInterface:I = 0x9

.field public static final REF_invokeSpecial:I = 0x7

.field public static final REF_invokeStatic:I = 0x6

.field public static final REF_invokeVirtual:I = 0x5

.field public static final REF_newInvokeSpecial:I = 0x8

.field public static final REF_putField:I = 0x3

.field public static final REF_putStatic:I = 0x4

.field public static final THIS:Ljavassist/CtClass;


# instance fields
.field items:Ljavassist/bytecode/LongVector;

.field itemsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavassist/bytecode/ConstInfo;",
            "Ljavassist/bytecode/ConstInfo;",
            ">;"
        }
    .end annotation
.end field

.field numOfItems:I

.field thisClassInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    sput-object v0, Ljavassist/bytecode/ConstPool;->THIS:Ljavassist/CtClass;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    .line 205
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstPool;->read(Ljava/io/DataInputStream;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "thisclass"    # Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljavassist/bytecode/LongVector;

    invoke-direct {v0}, Ljavassist/bytecode/LongVector;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    .line 189
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 190
    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    .line 191
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    .line 192
    return-void
.end method

.method private addItem(Ljavassist/bytecode/ConstInfo;)I
    .locals 3
    .param p1, "info"    # Ljavassist/bytecode/ConstInfo;

    .line 925
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 926
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-static {v0}, Ljavassist/bytecode/ConstPool;->makeItemsCache(Ljavassist/bytecode/LongVector;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    .line 928
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ConstInfo;

    .line 929
    .local v0, "found":Ljavassist/bytecode/ConstInfo;
    if-eqz v0, :cond_1

    .line 930
    iget v1, v0, Ljavassist/bytecode/ConstInfo;->index:I

    return v1

    .line 931
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/LongVector;->addElement(Ljavassist/bytecode/ConstInfo;)V

    .line 932
    iget-object v1, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    return v1
.end method

.method private addItem0(Ljavassist/bytecode/ConstInfo;)I
    .locals 2
    .param p1, "info"    # Ljavassist/bytecode/ConstInfo;

    .line 919
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/LongVector;->addElement(Ljavassist/bytecode/ConstInfo;)V

    .line 920
    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    return v0
.end method

.method private static makeItemsCache(Ljavassist/bytecode/LongVector;)Ljava/util/Map;
    .locals 3
    .param p0, "items"    # Ljavassist/bytecode/LongVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/LongVector;",
            ")",
            "Ljava/util/Map<",
            "Ljavassist/bytecode/ConstInfo;",
            "Ljavassist/bytecode/ConstInfo;",
            ">;"
        }
    .end annotation

    .line 1354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1355
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/bytecode/ConstInfo;Ljavassist/bytecode/ConstInfo;>;"
    const/4 v1, 0x1

    .line 1357
    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v1

    .line 1358
    .local v1, "info":Ljavassist/bytecode/ConstInfo;
    if-nez v1, :cond_0

    .line 1359
    nop

    .line 1363
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    return-object v0

    .line 1360
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :cond_0
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    move v1, v2

    goto :goto_0
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1337
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 1339
    .local v0, "n":I
    new-instance v1, Ljavassist/bytecode/LongVector;

    invoke-direct {v1, v0}, Ljavassist/bytecode/LongVector;-><init>(I)V

    iput-object v1, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 1340
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 1341
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    .line 1343
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_2

    .line 1344
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstPool;->readOne(Ljava/io/DataInputStream;)I

    move-result v1

    .line 1345
    .local v1, "tag":I
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1346
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    .line 1347
    add-int/lit8 v0, v0, -0x1

    .line 1349
    .end local v1    # "tag":I
    :cond_1
    goto :goto_0

    .line 1350
    :cond_2
    return-void
.end method

.method private readOne(Ljava/io/DataInputStream;)I
    .locals 4
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1369
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 1370
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 1423
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid constant type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1420
    :pswitch_1
    new-instance v1, Ljavassist/bytecode/PackageInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/PackageInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1421
    .local v1, "info":Ljavassist/bytecode/ConstInfo;
    goto/16 :goto_0

    .line 1417
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_2
    new-instance v1, Ljavassist/bytecode/ModuleInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/ModuleInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1418
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto/16 :goto_0

    .line 1414
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_3
    new-instance v1, Ljavassist/bytecode/InvokeDynamicInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/InvokeDynamicInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1415
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto/16 :goto_0

    .line 1411
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_4
    new-instance v1, Ljavassist/bytecode/DynamicInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/DynamicInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1412
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto/16 :goto_0

    .line 1408
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_5
    new-instance v1, Ljavassist/bytecode/MethodTypeInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/MethodTypeInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1409
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1405
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_6
    new-instance v1, Ljavassist/bytecode/MethodHandleInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/MethodHandleInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1406
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1402
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_7
    new-instance v1, Ljavassist/bytecode/NameAndTypeInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/NameAndTypeInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1403
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1399
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_8
    new-instance v1, Ljavassist/bytecode/InterfaceMethodrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/InterfaceMethodrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1400
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1396
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_9
    new-instance v1, Ljavassist/bytecode/MethodrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/MethodrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1397
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1393
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_a
    new-instance v1, Ljavassist/bytecode/FieldrefInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/FieldrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1394
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1390
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_b
    new-instance v1, Ljavassist/bytecode/StringInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/StringInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1391
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1387
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_c
    new-instance v1, Ljavassist/bytecode/ClassInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/ClassInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1388
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1384
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_d
    new-instance v1, Ljavassist/bytecode/DoubleInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/DoubleInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1385
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1381
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_e
    new-instance v1, Ljavassist/bytecode/LongInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/LongInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1382
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1378
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_f
    new-instance v1, Ljavassist/bytecode/FloatInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/FloatInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1379
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1375
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_10
    new-instance v1, Ljavassist/bytecode/IntegerInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/IntegerInfo;-><init>(Ljava/io/DataInputStream;I)V

    .line 1376
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    goto :goto_0

    .line 1372
    .end local v1    # "info":Ljavassist/bytecode/ConstInfo;
    :pswitch_11
    new-instance v1, Ljavassist/bytecode/Utf8Info;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, p1, v2}, Ljavassist/bytecode/Utf8Info;-><init>(Ljava/io/DataInputStream;I)V

    .line 1373
    .restart local v1    # "info":Ljavassist/bytecode/ConstInfo;
    nop

    .line 1427
    :goto_0
    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    .line 1428
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addClassInfo(Ljava/lang/String;)I
    .locals 3
    .param p1, "qname"    # Ljava/lang/String;

    .line 996
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    .line 997
    .local v0, "utf8":I
    new-instance v1, Ljavassist/bytecode/ClassInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/ClassInfo;-><init>(II)V

    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v1

    return v1
.end method

.method public addClassInfo(Ljavassist/CtClass;)I
    .locals 1
    .param p1, "c"    # Ljavassist/CtClass;

    .line 970
    sget-object v0, Ljavassist/bytecode/ConstPool;->THIS:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 971
    iget v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    return v0

    .line 972
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 973
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 980
    :cond_1
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method addConstInfoPadding()I
    .locals 2

    .line 957
    new-instance v0, Ljavassist/bytecode/ConstInfoPadding;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, v1}, Ljavassist/bytecode/ConstInfoPadding;-><init>(I)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem0(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addDoubleInfo(D)I
    .locals 2
    .param p1, "d"    # D

    .line 1188
    new-instance v0, Ljavassist/bytecode/DoubleInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/DoubleInfo;-><init>(DI)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    .line 1189
    .local v0, "i":I
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1190
    invoke-virtual {p0}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    .line 1192
    :cond_0
    return v0
.end method

.method public addDynamicInfo(II)I
    .locals 2
    .param p1, "bootstrap"    # I
    .param p2, "nameAndType"    # I

    .line 1260
    new-instance v0, Ljavassist/bytecode/DynamicInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/DynamicInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addFieldrefInfo(II)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 1054
    new-instance v0, Ljavassist/bytecode/FieldrefInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/FieldrefInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addFieldrefInfo(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 1041
    invoke-virtual {p0, p2, p3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1042
    .local v0, "nt":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/ConstPool;->addFieldrefInfo(II)I

    move-result v1

    return v1
.end method

.method public addFloatInfo(F)I
    .locals 2
    .param p1, "f"    # F

    .line 1162
    new-instance v0, Ljavassist/bytecode/FloatInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/FloatInfo;-><init>(FI)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addIntegerInfo(I)I
    .locals 2
    .param p1, "i"    # I

    .line 1151
    new-instance v0, Ljavassist/bytecode/IntegerInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/IntegerInfo;-><init>(II)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addInterfaceMethodrefInfo(II)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 1123
    new-instance v0, Ljavassist/bytecode/InterfaceMethodrefInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/InterfaceMethodrefInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addInterfaceMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 1108
    invoke-virtual {p0, p2, p3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1109
    .local v0, "nt":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/ConstPool;->addInterfaceMethodrefInfo(II)I

    move-result v1

    return v1
.end method

.method public addInvokeDynamicInfo(II)I
    .locals 2
    .param p1, "bootstrap"    # I
    .param p2, "nameAndType"    # I

    .line 1248
    new-instance v0, Ljavassist/bytecode/InvokeDynamicInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/InvokeDynamicInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addLongInfo(J)I
    .locals 2
    .param p1, "l"    # J

    .line 1173
    new-instance v0, Ljavassist/bytecode/LongInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/LongInfo;-><init>(JI)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    .line 1174
    .local v0, "i":I
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1175
    invoke-virtual {p0}, Ljavassist/bytecode/ConstPool;->addConstInfoPadding()I

    .line 1177
    :cond_0
    return v0
.end method

.method public addMethodHandleInfo(II)I
    .locals 2
    .param p1, "kind"    # I
    .param p2, "index"    # I

    .line 1219
    new-instance v0, Ljavassist/bytecode/MethodHandleInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/MethodHandleInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addMethodTypeInfo(I)I
    .locals 2
    .param p1, "desc"    # I

    .line 1233
    new-instance v0, Ljavassist/bytecode/MethodTypeInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/MethodTypeInfo;-><init>(II)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addMethodrefInfo(II)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "nameAndTypeInfo"    # I

    .line 1086
    new-instance v0, Ljavassist/bytecode/MethodrefInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/MethodrefInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addMethodrefInfo(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "classInfo"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 1073
    invoke-virtual {p0, p2, p3}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1074
    .local v0, "nt":I
    invoke-virtual {p0, p1, v0}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result v1

    return v1
.end method

.method public addModuleInfo(I)I
    .locals 2
    .param p1, "nameIndex"    # I

    .line 1271
    new-instance v0, Ljavassist/bytecode/ModuleInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/ModuleInfo;-><init>(II)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addNameAndTypeInfo(II)I
    .locals 2
    .param p1, "name"    # I
    .param p2, "type"    # I

    .line 1023
    new-instance v0, Ljavassist/bytecode/NameAndTypeInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, p2, v1}, Ljavassist/bytecode/NameAndTypeInfo;-><init>(III)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addNameAndTypeInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 1011
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/ConstPool;->addNameAndTypeInfo(II)I

    move-result v0

    return v0
.end method

.method public addPackageInfo(I)I
    .locals 2
    .param p1, "nameIndex"    # I

    .line 1282
    new-instance v0, Ljavassist/bytecode/PackageInfo;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/PackageInfo;-><init>(II)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public addStringInfo(Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1139
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    .line 1140
    .local v0, "utf":I
    new-instance v1, Ljavassist/bytecode/StringInfo;

    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/StringInfo;-><init>(II)V

    invoke-direct {p0, v1}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v1

    return v1
.end method

.method public addUtf8Info(Ljava/lang/String;)I
    .locals 2
    .param p1, "utf8"    # Ljava/lang/String;

    .line 1203
    new-instance v0, Ljavassist/bytecode/Utf8Info;

    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/Utf8Info;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Ljavassist/bytecode/ConstPool;->addItem(Ljavassist/bytecode/ConstInfo;)I

    move-result v0

    return v0
.end method

.method public copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 2
    .param p1, "n"    # I
    .param p2, "dest"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 949
    .local p3, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 950
    const/4 v0, 0x0

    return v0

    .line 952
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    .line 953
    .local v0, "info":Ljavassist/bytecode/ConstInfo;
    invoke-virtual {v0, p0, p2, p3}, Ljavassist/bytecode/ConstInfo;->copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v1

    return v1
.end method

.method public eqMember(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "membername"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 908
    invoke-virtual {p0, p3}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 909
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 910
    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/NameAndTypeInfo;

    .line 911
    .local v1, "ntinfo":Ljavassist/bytecode/NameAndTypeInfo;
    iget v2, v1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    .line 912
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    iget v2, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 914
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getClassInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 273
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ClassInfo;

    .line 274
    .local v0, "c":Ljavassist/bytecode/ClassInfo;
    if-nez v0, :cond_0

    .line 275
    const/4 v1, 0x0

    return-object v1

    .line 276
    :cond_0
    iget v1, v0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getClassInfoByDescriptor(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 290
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ClassInfo;

    .line 291
    .local v0, "c":Ljavassist/bytecode/ClassInfo;
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x0

    return-object v1

    .line 293
    :cond_0
    iget v1, v0, Ljavassist/bytecode/ClassInfo;->name:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "className":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    .line 295
    return-object v1

    .line 296
    :cond_1
    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 226
    iget v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1293
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 1294
    .local v1, "v":Ljavassist/bytecode/LongVector;
    iget v2, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 1295
    .local v2, "size":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1296
    invoke-virtual {v1, v3}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljavassist/bytecode/ConstInfo;->getClassName(Ljavassist/bytecode/ConstPool;)Ljava/lang/String;

    move-result-object v4

    .line 1297
    .local v4, "className":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1298
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1295
    .end local v4    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1300
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public getDoubleInfo(I)D
    .locals 3
    .param p1, "index"    # I

    .line 650
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/DoubleInfo;

    .line 651
    .local v0, "i":Ljavassist/bytecode/DoubleInfo;
    iget-wide v1, v0, Ljavassist/bytecode/DoubleInfo;->value:D

    return-wide v1
.end method

.method public getDynamicBootstrap(I)I
    .locals 2
    .param p1, "index"    # I

    .line 781
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/DynamicInfo;

    .line 782
    .local v0, "iv":Ljavassist/bytecode/DynamicInfo;
    iget v1, v0, Ljavassist/bytecode/DynamicInfo;->bootstrap:I

    return v1
.end method

.method public getDynamicNameAndType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 794
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/DynamicInfo;

    .line 795
    .local v0, "iv":Ljavassist/bytecode/DynamicInfo;
    iget v1, v0, Ljavassist/bytecode/DynamicInfo;->nameAndType:I

    return v1
.end method

.method public getDynamicType(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 809
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/DynamicInfo;

    .line 810
    .local v0, "iv":Ljavassist/bytecode/DynamicInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 811
    return-object v1

    .line 812
    :cond_0
    iget v2, v0, Ljavassist/bytecode/DynamicInfo;->nameAndType:I

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 813
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 814
    return-object v1

    .line 815
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFieldrefClass(I)I
    .locals 2
    .param p1, "index"    # I

    .line 358
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldrefInfo;

    .line 359
    .local v0, "finfo":Ljavassist/bytecode/FieldrefInfo;
    iget v1, v0, Ljavassist/bytecode/FieldrefInfo;->classIndex:I

    return v1
.end method

.method public getFieldrefClassName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 371
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldrefInfo;

    .line 372
    .local v0, "f":Ljavassist/bytecode/FieldrefInfo;
    if-nez v0, :cond_0

    .line 373
    const/4 v1, 0x0

    return-object v1

    .line 374
    :cond_0
    iget v1, v0, Ljavassist/bytecode/FieldrefInfo;->classIndex:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFieldrefName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 398
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldrefInfo;

    .line 399
    .local v0, "f":Ljavassist/bytecode/FieldrefInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 400
    return-object v1

    .line 401
    :cond_0
    iget v2, v0, Ljavassist/bytecode/FieldrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 402
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 403
    return-object v1

    .line 404
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFieldrefNameAndType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 384
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldrefInfo;

    .line 385
    .local v0, "finfo":Ljavassist/bytecode/FieldrefInfo;
    iget v1, v0, Ljavassist/bytecode/FieldrefInfo;->nameAndTypeIndex:I

    return v1
.end method

.method public getFieldrefType(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 417
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FieldrefInfo;

    .line 418
    .local v0, "f":Ljavassist/bytecode/FieldrefInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 419
    return-object v1

    .line 420
    :cond_0
    iget v2, v0, Ljavassist/bytecode/FieldrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 421
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 422
    return-object v1

    .line 423
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFloatInfo(I)F
    .locals 2
    .param p1, "index"    # I

    .line 626
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/FloatInfo;

    .line 627
    .local v0, "i":Ljavassist/bytecode/FloatInfo;
    iget v1, v0, Ljavassist/bytecode/FloatInfo;->value:F

    return v1
.end method

.method public getIntegerInfo(I)I
    .locals 2
    .param p1, "index"    # I

    .line 614
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/IntegerInfo;

    .line 615
    .local v0, "i":Ljavassist/bytecode/IntegerInfo;
    iget v1, v0, Ljavassist/bytecode/IntegerInfo;->value:I

    return v1
.end method

.method public getInterfaceMethodrefClass(I)I
    .locals 2
    .param p1, "index"    # I

    .line 510
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 511
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    return v1
.end method

.method public getInterfaceMethodrefClassName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 523
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 524
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInterfaceMethodrefName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 549
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 550
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 551
    return-object v1

    .line 552
    :cond_0
    iget v2, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 553
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 554
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 555
    return-object v1

    .line 556
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInterfaceMethodrefNameAndType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 534
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 535
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    return v1
.end method

.method public getInterfaceMethodrefType(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 570
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 571
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 572
    return-object v1

    .line 573
    :cond_0
    iget v2, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 574
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 575
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 576
    return-object v1

    .line 577
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInvokeDynamicBootstrap(I)I
    .locals 2
    .param p1, "index"    # I

    .line 735
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/InvokeDynamicInfo;

    .line 736
    .local v0, "iv":Ljavassist/bytecode/InvokeDynamicInfo;
    iget v1, v0, Ljavassist/bytecode/InvokeDynamicInfo;->bootstrap:I

    return v1
.end method

.method public getInvokeDynamicNameAndType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 748
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/InvokeDynamicInfo;

    .line 749
    .local v0, "iv":Ljavassist/bytecode/InvokeDynamicInfo;
    iget v1, v0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    return v1
.end method

.method public getInvokeDynamicType(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 763
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/InvokeDynamicInfo;

    .line 764
    .local v0, "iv":Ljavassist/bytecode/InvokeDynamicInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 765
    return-object v1

    .line 766
    :cond_0
    iget v2, v0, Ljavassist/bytecode/InvokeDynamicInfo;->nameAndType:I

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 767
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 768
    return-object v1

    .line 769
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getItem(I)Ljavassist/bytecode/ConstInfo;
    .locals 1
    .param p1, "n"    # I

    .line 245
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLdcValue(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I

    .line 590
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    .line 591
    .local v0, "constInfo":Ljavassist/bytecode/ConstInfo;
    const/4 v1, 0x0

    .line 592
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v0, Ljavassist/bytecode/StringInfo;

    if-eqz v2, :cond_0

    .line 593
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getStringInfo(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 594
    :cond_0
    instance-of v2, v0, Ljavassist/bytecode/FloatInfo;

    if-eqz v2, :cond_1

    .line 595
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getFloatInfo(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 596
    :cond_1
    instance-of v2, v0, Ljavassist/bytecode/IntegerInfo;

    if-eqz v2, :cond_2

    .line 597
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getIntegerInfo(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 598
    :cond_2
    instance-of v2, v0, Ljavassist/bytecode/LongInfo;

    if-eqz v2, :cond_3

    .line 599
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getLongInfo(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 600
    :cond_3
    instance-of v2, v0, Ljavassist/bytecode/DoubleInfo;

    if-eqz v2, :cond_4

    .line 601
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getDoubleInfo(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 603
    :cond_4
    :goto_0
    return-object v1
.end method

.method public getLongInfo(I)J
    .locals 3
    .param p1, "index"    # I

    .line 638
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/LongInfo;

    .line 639
    .local v0, "i":Ljavassist/bytecode/LongInfo;
    iget-wide v1, v0, Ljavassist/bytecode/LongInfo;->value:J

    return-wide v1
.end method

.method public getMemberClass(I)I
    .locals 2
    .param p1, "index"    # I

    .line 332
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 333
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    return v1
.end method

.method public getMemberNameAndType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 347
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 348
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    return v1
.end method

.method public getMethodHandleIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 709
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MethodHandleInfo;

    .line 710
    .local v0, "mhinfo":Ljavassist/bytecode/MethodHandleInfo;
    iget v1, v0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    return v1
.end method

.method public getMethodHandleKind(I)I
    .locals 2
    .param p1, "index"    # I

    .line 696
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MethodHandleInfo;

    .line 697
    .local v0, "mhinfo":Ljavassist/bytecode/MethodHandleInfo;
    iget v1, v0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    return v1
.end method

.method public getMethodTypeInfo(I)I
    .locals 2
    .param p1, "index"    # I

    .line 722
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MethodTypeInfo;

    .line 723
    .local v0, "mtinfo":Ljavassist/bytecode/MethodTypeInfo;
    iget v1, v0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    return v1
.end method

.method public getMethodrefClass(I)I
    .locals 2
    .param p1, "index"    # I

    .line 433
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 434
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    return v1
.end method

.method public getMethodrefClassName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 446
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 447
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x0

    return-object v1

    .line 449
    :cond_0
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMethodrefName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 473
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 474
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 475
    return-object v1

    .line 476
    :cond_0
    iget v2, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 477
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 478
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 479
    return-object v1

    .line 480
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMethodrefNameAndType(I)I
    .locals 2
    .param p1, "index"    # I

    .line 459
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 460
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    return v1
.end method

.method public getMethodrefType(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .line 493
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 494
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 495
    return-object v1

    .line 496
    :cond_0
    iget v2, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 497
    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/NameAndTypeInfo;

    .line 498
    .local v2, "n":Ljavassist/bytecode/NameAndTypeInfo;
    if-nez v2, :cond_1

    .line 499
    return-object v1

    .line 500
    :cond_1
    iget v1, v2, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getModuleInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 827
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ModuleInfo;

    .line 828
    .local v0, "mi":Ljavassist/bytecode/ModuleInfo;
    iget v1, v0, Ljavassist/bytecode/ModuleInfo;->name:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNameAndTypeDescriptor(I)I
    .locals 2
    .param p1, "index"    # I

    .line 317
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/NameAndTypeInfo;

    .line 318
    .local v0, "ntinfo":Ljavassist/bytecode/NameAndTypeInfo;
    iget v1, v0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    return v1
.end method

.method public getNameAndTypeName(I)I
    .locals 2
    .param p1, "index"    # I

    .line 306
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/NameAndTypeInfo;

    .line 307
    .local v0, "ntinfo":Ljavassist/bytecode/NameAndTypeInfo;
    iget v1, v0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    return v1
.end method

.method public getPackageInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 841
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/PackageInfo;

    .line 842
    .local v0, "mi":Ljavassist/bytecode/PackageInfo;
    iget v1, v0, Ljavassist/bytecode/PackageInfo;->name:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSize()I
    .locals 1

    .line 218
    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    return v0
.end method

.method public getStringInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 662
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/StringInfo;

    .line 663
    .local v0, "si":Ljavassist/bytecode/StringInfo;
    iget v1, v0, Ljavassist/bytecode/StringInfo;->string:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTag(I)I
    .locals 1
    .param p1, "index"    # I

    .line 257
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ConstInfo;->getTag()I

    move-result v0

    return v0
.end method

.method public getThisClassInfo()I
    .locals 1

    .line 235
    iget v0, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    return v0
.end method

.method public getUtf8Info(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 674
    invoke-virtual {p0, p1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/Utf8Info;

    .line 675
    .local v0, "utf":Ljavassist/bytecode/Utf8Info;
    iget-object v1, v0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    return-object v1
.end method

.method public isConstructor(Ljava/lang/String;I)I
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 857
    const-string v0, "<init>"

    invoke-virtual {p0, p1, v0, p2}, Ljavassist/bytecode/ConstPool;->isMember(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isMember(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "membername"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 878
    invoke-virtual {p0, p3}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/MemberrefInfo;

    .line 879
    .local v0, "minfo":Ljavassist/bytecode/MemberrefInfo;
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    iget v1, v0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    .line 881
    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstPool;->getItem(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/NameAndTypeInfo;

    .line 882
    .local v1, "ntinfo":Ljavassist/bytecode/NameAndTypeInfo;
    iget v2, v1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 883
    iget v2, v1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    return v2

    .line 886
    .end local v1    # "ntinfo":Ljavassist/bytecode/NameAndTypeInfo;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public print()V
    .locals 3

    .line 1448
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->print(Ljava/io/PrintWriter;)V

    .line 1449
    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 1456
    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 1457
    .local v0, "size":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1458
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1459
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1460
    iget-object v2, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/bytecode/ConstInfo;->print(Ljava/io/PrintWriter;)V

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1462
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method prune()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    .line 211
    return-void
.end method

.method public renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .line 1311
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 1312
    .local v0, "v":Ljavassist/bytecode/LongVector;
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 1313
    .local v1, "size":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1314
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v3

    .line 1315
    .local v3, "ci":Ljavassist/bytecode/ConstInfo;
    iget-object v4, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    invoke-virtual {v3, p0, p1, p2, v4}, Ljavassist/bytecode/ConstInfo;->renameClass(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1313
    .end local v3    # "ci":Ljavassist/bytecode/ConstInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1317
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public renameClass(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1327
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 1328
    .local v0, "v":Ljavassist/bytecode/LongVector;
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 1329
    .local v1, "size":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1330
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v3

    .line 1331
    .local v3, "ci":Ljavassist/bytecode/ConstInfo;
    iget-object v4, p0, Ljavassist/bytecode/ConstPool;->itemsCache:Ljava/util/Map;

    invoke-virtual {v3, p0, p1, v4}, Ljavassist/bytecode/ConstInfo;->renameClass(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljava/util/Map;)V

    .line 1329
    .end local v3    # "ci":Ljavassist/bytecode/ConstInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1333
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method setThisClassInfo(I)V
    .locals 0
    .param p1, "i"    # I

    .line 240
    iput p1, p0, Ljavassist/bytecode/ConstPool;->thisClassInfo:I

    .line 241
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1436
    iget v0, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1437
    iget-object v0, p0, Ljavassist/bytecode/ConstPool;->items:Ljavassist/bytecode/LongVector;

    .line 1438
    .local v0, "v":Ljavassist/bytecode/LongVector;
    iget v1, p0, Ljavassist/bytecode/ConstPool;->numOfItems:I

    .line 1439
    .local v1, "size":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1440
    invoke-virtual {v0, v2}, Ljavassist/bytecode/LongVector;->elementAt(I)Ljavassist/bytecode/ConstInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljavassist/bytecode/ConstInfo;->write(Ljava/io/DataOutputStream;)V

    .line 1439
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1441
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
