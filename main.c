/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: honlee <honlee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/24 21:44:54 by honlee            #+#    #+#             */
/*   Updated: 2021/02/24 21:47:04 by honlee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int			main()
{
	//printf("%zu\n", ft_strlen("test!!asdfasdf"));
	//printf("%zu\n", strlen("test!!asdfasdf"));

	char dest[100] = "";
	char dest2[100] = "";
	printf("%s\n", strcpy(dest, "this is test"));
	printf("%s\n", ft_strcpy(dest2, "this is test"));

	printf("%d\n", ft_strcmp("same","same"));
	printf("%d\n", strcmp("same","same"));

	printf("%d\n", ft_strcmp("same","saeme"));
	printf("%d\n", strcmp("same","saeme"));

}