.class public Lorg/cocos2dx/lib/Cocos2dxETCLoader;
.super Ljava/lang/Object;
.source "Cocos2dxETCLoader.java"


# static fields
.field private static final ASSETS_PATH:Ljava/lang/String; = "assets/"

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(Ljava/lang/String;)Z
    .locals 14
    .param p0    # Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_2

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v5}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-eqz v9, :cond_0

    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v9}, Landroid/opengl/ETC1Util$ETC1Texture;->getWidth()I

    move-result v10

    invoke-virtual {v9}, Landroid/opengl/ETC1Util$ETC1Texture;->getHeight()I

    move-result v4

    invoke-virtual {v9}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v2, v7, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Landroid/opengl/ETC1Util$ETC1Texture;->getData()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-static {v10, v4, v2, v7}, Lorg/cocos2dx/lib/Cocos2dxETCLoader;->nativeSetTextureInfo(II[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v11, "invoke native function error"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v11, "assets/"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "assets/"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    sget-object v11, Lorg/cocos2dx/lib/Cocos2dxETCLoader;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v11, "Cocos2dx"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unable to create texture for "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_2
.end method

.method private static native nativeSetTextureInfo(II[BI)V
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;

    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxETCLoader;->context:Landroid/content/Context;

    return-void
.end method
